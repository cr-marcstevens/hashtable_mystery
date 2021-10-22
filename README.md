# Hash Table Mystery

Running the script in this repository gives the following output on my machine:

```
$ ./test.sh
model name      : Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GHz
==============================
CXX=g++    CXXFLAGS=-std=c++11 -O2 -march=native -falign-functions=64
tablesize: 117440512 elements: 67108864 loadfactor=0.571429
- test insert_ok : 11200ms
- test insert_bad: 3164ms
  (outcome identical to insert_ok: true)
- test insert_alt: 3366ms
  (outcome identical to insert_ok: true)

tablesize: 117440813 elements: 67108864 loadfactor=0.571427
- test insert_ok : 10840ms
- test insert_bad: 3301ms
  (outcome identical to insert_ok: true)
- test insert_alt: 3579ms
  (outcome identical to insert_ok: true)
```

It is noticable that `insert_ok` is around 3x slower (!!!) than its counterparts `insert_bad` and `insert_alt`,
especially since `insert_bad` is a more stupid implementation of insert_ok, see below.

## Details case

See the `data` subdirectory for g++ version, cpuinfo, and disassembly of the test functions.

I've added my statically linked binaries to rule out compiler differences: `test_prime` and `test_binary`.

## Details case 2

See data_case2.zip

# A potential solution

Based on comments by Travis Down (https://twitter.com/trav_downs/status/1451400596238397444) the problem might be 
around the load of B.size and the subsequent store with B.size-dependent address, 
in combination with a break down of specific CPU generation's speculative behaviour that can't handle this case effectively. 

As I understand, `insert_bad` and `insert_alt` both circumvent the B.size-dependent address, because they do a linear search i=0,.. and stop at the correct position.
For `insert_bad` this might seem contradictory as i==B.size, but the write address will be dependent on the register containing i, not B.size.
This apparently makes the difference for speculative behaviour.

There might be three potential workarounds:

(1) As suggested by Travis Down, do bitbanging to update the cacheline and
have non-B.size address dependent writes. I have not tested this yet.

(2) If the use-case allows: do inserts in batches. Tested and this reduces
the cost of insert_ok from ~11400ms to ~1500ms: a factor 7.6 improvement!!
See the output below.

(3) Like (2), but move batching inside the hash table by utilizing a fixed
size insert queue. Upon insert, prefetch the cacheline for itself, but
actually process the head item of the queue. Whenever necessary for
correctness, like hash table look-ups, of course first process and clear the
entire insert queue. I have not tested this yet.

```
model name      : Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GHz
==============================
CXX=g++    CXXFLAGS=-std=c++11 -O2 -march=native -falign-functions=64 -static
tablesize: 117440512 elements: 67108864 loadfactor=0.571429
- test insert_ok : 11793ms
- test insert_bad: 3278ms
  (outcome identical to insert_ok: true)
- test insert_alt: 3666ms
  (outcome identical to insert_ok: true)
- test insert_ok_batch : 1496ms
- test insert_bad_batch : 2089ms
- test insert_alt_batch : 2470ms

tablesize: 117440813 elements: 67108864 loadfactor=0.571427
- test insert_ok : 11350ms
- test insert_bad: 3374ms
  (outcome identical to insert_ok: true)
- test insert_alt: 3563ms
  (outcome identical to insert_ok: true)
- test insert_ok_batch : 1831ms
- test insert_bad_batch : 2397ms
- test insert_alt_batch : 2553ms
```



# The three hash table functions

```
    // insert element in hash_table
    inline void insert_ok(uint64_t k)
    {
        // compute target bucket
        uint64_t b = mod(k);
        // bounded linear search for first non-full bucket
        for (size_t c = 0; c < 1024; ++c)
        {
            bucket_t& B = table_ok[b];
            // if bucket non-full then store element and return
            if (B.size != bucket_size)
            {
                B.keys[B.size] = k;
                B.values[B.size] = 1;
                ++B.size;
                ++table_count;
                return;
            }
            // increase b w/ wrap around
            if (++b == table_size)
                b = 0;
        }
    }
```

```
    // equivalent to insert_ok
    // but uses a stupid linear search to store the element at the target position
    inline void insert_bad(uint64_t k)
    {
        // compute target bucket
        uint64_t b = mod(k);
        // bounded linear search for first non-full bucket
        for (size_t c = 0; c < 1024; ++c)
        {
            bucket_t& B = table_bad[b];
            // if bucket non-full then store element and return
            if (B.size != bucket_size)
            {
                for (size_t i = 0; i < bucket_size; ++i)
                {
                    if (i == B.size)
                    {
                        B.keys[i] = k;
                        B.values[i] = 1;
                        ++B.size;
                        ++table_count;
                        return;
                    }
                }
            }
            // increase b w/ wrap around
            if (++b == table_size)
                b = 0;
        }
    }
```

```
    // instead of using bucket_t.size, empty elements are marked by special empty_key value
    // a bucket is filled first to last, so bucket is full if last element key != empty_key
    uint64_t empty_key = ~uint64_t(0);
    inline void insert_alt(uint64_t k)
    {
        // compute target bucket
        uint64_t b = mod(k);
        // bounded linear search for first non-full bucket
        for (size_t c = 0; c < 1024; ++c)
        {
            bucket_t& B = table_alt[b];
            // if bucket non-full then store element and return
            if (B.keys[bucket_size-1] == empty_key)
            {
                for (size_t i = 0; i < bucket_size; ++i)
                {
                    if (B.keys[i] == empty_key)
                    {
                        B.keys[i] = k;
                        B.values[i] = 1;
                        ++table_count;
                        return;
                    }
                }
            }
            // increase b w/ wrap around
            if (++b == table_size)
                b = 0;
        }
    }
```
