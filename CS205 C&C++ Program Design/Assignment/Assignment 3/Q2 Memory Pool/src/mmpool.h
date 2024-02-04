#ifndef __MMPOOL__
#define __MMPOOL__
#include <stdint.h>
#include <stdlib.h>

typedef struct mmpool mmpool_t;
typedef struct mmpool_data mmpool_data_t;
typedef struct mmpool_large mmpool_large_t;

#define MMPOOL_MAX_FAILED 4
struct mmpool_data {
    uint8_t        *last;
    uint8_t        *end;
    mmpool_t       *next;
    size_t         failed;
};

struct mmpool_large {
    mmpool_large_t    *next;
    void              *alloc;
};

#define MMPOOL_MAX_ALLOC (0x1000 - sizeof(mmpool_t))
#define MMPOOL_SIZE      (0x1000 - sizeof(mmpool_t))
struct mmpool {
    mmpool_data_t   data;
    mmpool_t        *current;
    mmpool_large_t  *large;
};

/**
 * @brief Create a mmpool_t entry.
 * 
 * @return mmpool_t* the pointer of the memory pool.
 */
mmpool_t* mmpool_create();

/**
 * @brief Allocate a memory block from a memory pool.
 * 
 * @param pool the pointer of the memory pool.
 * @param size size of the memory block (in bytes).
 * 
 * @return void* pointer of the start address of the memory block.
 */
void* mmpool_alloc(mmpool_t *pool, size_t size);

/**
 * @brief Allocate a large memory block by `malloc()`.
 * This function must be called by `mmpool_alloc()`. Do not manually call it.
 * 
 * @param size size of the memory block (in bytes).
 * 
 * @return mmpool_large_t* pointer of the start address of the memory block.
 */
mmpool_large_t* mmpool_alloc_large(size_t size);

/**
 * @brief Free a large memory block from a memory pool.
 * 
 * @param pool the pointer of the memory pool.
 * @param p `*alloc` of the large memory block.
 */
void mmpool_free_large(mmpool_t *pool, void *p);

/**
 * @brief Destroy a memory pool. Free all related memory.
 * 
 * @param pool the pointer of the memory pool.
 */
void mmpool_destroy(mmpool_t *pool);

/**
 * @brief Reset a memory pool i.e. 
 * reset `*current` to the pool itself, `*last` and `failed`;
 * free all large memory blocks.
 * 
 * @param pool the pointer of the memory pool.
 */
void mmpool_reset(mmpool_t *pool);

/**
 * @brief Print details of a `mmpool` entry through standard I/O stream.
 * 
 * @param pool the pointer of the memory pool.
 */
void prt_mmpool_details(mmpool_t *pool);
#endif