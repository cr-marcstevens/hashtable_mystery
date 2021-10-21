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

## Details case 2

See data_case2.zip

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
