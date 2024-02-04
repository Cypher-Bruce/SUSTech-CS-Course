#include "mmpool.h"
#include <stdio.h>
#define MAX_POINTERS 100000

int main() {
    int Q, q, op;
    size_t size;

    /*
        op: operator
        1 - Create a memory pool
        2 - Allocate memory from memory pool
        3 - Free the latest allocated large memory
        4 - Reset the memory pool
        5 - Destroy a memory pool
    */

    mmpool_t *pool;
    void *small[MAX_POINTERS], *big[MAX_POINTERS];
    size_t scnt = 0, bcnt = 0;

    scanf("%d", &Q);
    for (q = 0; q < Q; ++q) {
        scanf("%d", &op);
        
        printf("[DEBUG] Query: %d, Operator: %d\n", q, op);

        if (op == 1)
            pool = mmpool_create();
        else if (op == 2) {
            scanf("%lu", &size);
            if (size <= MMPOOL_MAX_ALLOC)
                small[scnt++] = mmpool_alloc(pool, size);
            else big[bcnt++] = mmpool_alloc(pool, size);
        }
        else if (op == 3)
            mmpool_free_large(pool, big[--bcnt]);
        else if (op == 4)
            mmpool_reset(pool);
        else if (op == 5) {
            mmpool_destroy(pool);
            pool = NULL;
        }
        else puts("UNKNOWN OPERATOR!");

        prt_mmpool_details(pool);
    } 

    return 0;
}