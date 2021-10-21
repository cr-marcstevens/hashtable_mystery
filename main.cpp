/* copyright Marc Stevens, 2021 */
/* MIT License */

#include "aligned_vector.hpp"

#include <iostream>
#include <chrono>
#include <random>
#include <vector>
#include <cstring>

// our benchmark clock
typedef std::chrono::steady_clock bench_clock_t;

// a vector where we pregenerate a large amount of random numbers to insert in hash tables
std::vector<uint64_t> random_numbers;

// our hash tables consist of buckets that exactly fit in a cacheline
// typical hash table operations should access only a single cacheline from the hash table
static const size_t bucket_size = 7;
struct alignas(64) bucket_t
{
    uint64_t keys  [bucket_size];
    uint8_t  values[bucket_size];
    uint8_t  size;
    
    bool operator==(const bucket_t& r) const
    {
        if (size != r.size)
            return false;
        for (size_t i = 0; i < size; ++i)
            if (keys[i] != r.keys[i] || values[i] != r.values[i])
                return false;
        return true;
    }
};
static_assert(sizeof(bucket_t)==64, "error");
static_assert(alignof(bucket_t)==64, "error");


/* 
    Setup our hash table size
    2 options:
        1) power of 2: 2^24
            - pro: has fast `k % table_size`
              by doing `k & (table_size - 1)`
            - con: can only grow by factor 2
        2) fast primes
            - pro: has fast `k % table_size`
              by doing `k - table_size*((k*muldiv)>>(64+shift))`
            - pro: works for many primes, grow factor has fine granularity
            - note: cannot find correct muldiv & shift for all primes
            
    when USE_PRIME is defined go for option (2) otherwise option (1)
*/

#ifndef USE_PRIME
static const uint64_t table_size = 1ULL<<24; // power of 2
inline uint64_t mod(uint64_t n) { return n % table_size; }
#else
uint64_t table_size = 16777259; // fast prime
struct {
    typedef unsigned __int128 uint128_t;
    
    uint64_t prime;
    uint64_t muldiv;
    unsigned shift;
    
    inline uint64_t div(uint64_t n) const
    {
        uint64_t div = (uint128_t(n) * muldiv) >> 64;
        div >>= shift;
        return div;
    }
    inline uint64_t mod(uint64_t n) const
    {
        return n - div(n)*prime;
    }
} hash_prime;
inline uint64_t mod(uint64_t n) { return hash_prime.mod(n); }
#endif


// C++11 std::vector may not actually respect alignment, aligned_vector does
aligned_vector<bucket_t> table_ok(table_size);
aligned_vector<bucket_t> table_bad(table_size);
aligned_vector<bucket_t> table_alt(table_size);

size_t table_count;


/*
    These are the three hash table implementations we're going to compare.
    They should all behave exactly the same:
        - same bucket types
        - same input
        - outcome is the same
    Representation of empty bucket elements is slightly different for the last implementation
*/

    /* 
        For key k computes target bucket b (= k % table_size).
        Then does linear search for first bucket b'>=b that is not full (mod table_size)
        Writes value in bucket b' at position b'.size and increases b'.size and table size
    */
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

    /*
        Like insert_ok but with a stupid modification:
            Instead of directly writing at position b'.size in bucket b'
            does stupid linear search (i=0,...,bucket_size-1) until i==b'.size
            then writes at position i in bucket b'
    */
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

    /*
        Alternative where bucket.size is ignored.
        Bucket elements are marked empty by having a special value key == empty_key.
        It can check a bucket is not full by checking the last element.
        To find the position to write the element,
         it needs to do a linear search for the first position with key value empty_key
    */
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
    

/*
    we use `extern "C"` to avoid C++ name mangling
    so that assembly code of the following functions is easily obtainable:
        objdump ./test --disassemble=hash_table_ok
        objdump ./test --disassemble=hash_table_bad
        objdump ./test --disassemble=hash_table_alt
*/
extern "C" {

__attribute__ ((noinline))
void hash_table_ok()
{
    memset(&table_ok[0], 0, sizeof(bucket_t)*table_size);
    table_count = 0;
    auto start = bench_clock_t::now();

    for (auto k : random_numbers)
        insert_ok(k);

    auto end = bench_clock_t::now();
    double ms = std::chrono::duration_cast<std::chrono::milliseconds>(end-start).count();
    std::cout << "- test insert_ok : " << ms << "ms" << std::endl;
}



__attribute__ ((noinline))
void hash_table_bad()
{
    memset(&table_bad[0], 0, sizeof(bucket_t)*table_size);
    table_count = 0;
    auto start = bench_clock_t::now();

    for (auto k : random_numbers)
        insert_bad(k);

    auto end = bench_clock_t::now();
    double ms = std::chrono::duration_cast<std::chrono::milliseconds>(end-start).count();
    std::cout << "- test insert_bad: " << ms << "ms" << std::endl;
}


__attribute__ ((noinline))
void hash_table_alternative()
{
    memset(&table_alt[0], 0xFF, sizeof(bucket_t)*table_size);
    table_count = 0;
    auto start = bench_clock_t::now();
    
    for (auto k : random_numbers)
        insert_alt(k);
        
    auto end = bench_clock_t::now();
    double ms = std::chrono::duration_cast<std::chrono::milliseconds>(end-start).count();
    std::cout << "- test insert_alt: " << ms << "ms" << std::endl;
}

} // extern C


int main(int,char**)
{
    // generate random numbers
    std::random_device rd;
    std::mt19937_64 mt(rd());
    for (size_t i = 0; i < (1ULL<<26); ++i)
        random_numbers.push_back(mt());
    // display experiment setup
    std::cout << "tablesize: " << table_size*bucket_size << " elements: " << random_numbers.size() << " loadfactor=" << float(random_numbers.size())/float(table_size*bucket_size) << std::endl;

#ifdef USE_PRIME
    // setup fast hash prime
    hash_prime = { 16777259, 0x7fffea80039c7f65, 23 };
    if (hash_prime.prime != table_size)
        throw;
#endif


    // do experiment w/ insert_ok
    hash_table_ok();
    
    // do experiment w/ insert_bad
    hash_table_bad();

    // compare outcomes of insert_ok and insert_bad
    std::cout << "  (outcome identical to insert_ok: " << ((table_bad == table_ok)?"true":"false") << ")" << std::endl;


    // do experiment w/ insert_alt
    hash_table_alternative();

    // compare outcomes of insert_ok and insert_alt
    // but first sanitize table_alt to correspond to representation of table_ok
    for (auto& B : table_alt)
    {
        B.size = bucket_size;
        for (int i = bucket_size-1; i >= 0; --i)
            if (B.keys[i] == empty_key)
            {
                B.keys[i] = 0;
                B.values[i] = 0;
                B.size = i;
            }
    }
    std::cout << "  (outcome identical to insert_ok: " << ((table_alt == table_ok)?"true":"false") << ")" << std::endl;
    
    std::cout << std::endl;
    
    return 0;
}
