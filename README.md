# Hash Table Mystery

Running the script in this repository gives the following output on my machine:

```
$ ./test.sh
model name      : Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GHz
==============================
CXX=g++    CXXFLAGS=-std=c++11 -O2 -march=native -falign-functions=64
tablesize: 117440512 elements: 67108864 loadfactor=0.571429
- test insert_ok : 11182ms
- test insert_bad: 3181ms
  (outcome identical to insert_ok: true)
- test insert_alt: 3419ms
  (outcome identical to insert_ok: true)

tablesize: 117440813 elements: 67108864 loadfactor=0.571427
- test insert_ok : 11051ms
- test insert_bad: 3312ms
  (outcome identical to insert_ok: true)
- test insert_alt: 3646ms
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
    inline void insert_ok(uint64_t k)
    {
        uint64_t b = mod(k);
        for (size_t c = 0; c < 1024; ++c)
        {
            bucket_t& B = table_ok[b];
            if (B.size != bucket_size)
            {
                B.keys[B.size] = k;
                B.values[B.size] = 1;
                ++B.size;
                ++table_count;
                return;
            }
            if (++b == table_size)
                b = 0;
        }
    }
```

```
    inline void insert_bad(uint64_t k)
    {
        uint64_t b = mod(k);
        for (size_t c = 0; c < 1024; ++c)
        {
            bucket_t& B = table_bad[b];
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
            if (++b == table_size)
                b = 0;
        }
    }
```

```
    uint64_t empty_key = ~uint64_t(0);
    inline void insert_alt(uint64_t k)
    {
        uint64_t b = mod(k);
        for (size_t c = 0; c < 1024; ++c)
        {
            bucket_t& B = table_alt[b];
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
            if (++b == table_size)
                b = 0;
        }
    }
```
