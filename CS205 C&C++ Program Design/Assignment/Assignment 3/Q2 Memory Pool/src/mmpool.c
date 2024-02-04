#include "mmpool.h"
#include <stdio.h>

/* Functions for tests */
/* ==BEGIN== */
void prt_mmpool_details(mmpool_t *pool) {
    if (pool == NULL) return;
    puts("===MEMORY POOL DETAILS===");
    printf("POOL ADDRESS: %p\n", pool);
    printf("POOL SIZE (FOR EACH): %lu\n", MMPOOL_SIZE);
    printf("MAX ALLOCATION SIZE: %lu\n", MMPOOL_MAX_ALLOC);
    printf("MAX FAILED TIMES: %d\n", MMPOOL_MAX_FAILED);
    printf("CURRENT ACTIVE POOL ADDRESS: %p\n", pool->current);
    puts("\nSUB POOL DETAILS:");

    size_t count = 0;
    mmpool_t *cur = pool;
    while (cur != NULL) {
        printf("\t-> Sub pool #%lu, address=%p, free_space=%lu (bytes), failed=%lu\n",
                ++count, cur, (size_t)(cur->data.end - cur->data.last), cur->data.failed);
        cur = cur->data.next;
    }
    printf("SUB POOL COUNT: %lu\n", count);

    puts("\nLARGE BLOCK DETAILS: ");
    count = 0;
    mmpool_large_t *large = pool->large;
    while (large != NULL) {
        printf("\t-> Large block #%lu, address=%p\n", ++count, large);
        large = large->next;
    }
    printf("LARGE BLOCK COUNT: %lu\n", count);
    puts("===MEMORY POOL DETAILS END===\n");
}
/* ==END== */

mmpool_t* mmpool_create() {
    mmpool_t* p = NULL;

    p = (mmpool_t*) malloc(sizeof(mmpool_t) + MMPOOL_SIZE);
    if (p != NULL) {
        p->data.last = (uint8_t*) p + sizeof(mmpool_t);
        p->data.end = p->data.last + MMPOOL_SIZE;
        p->data.next = NULL;
        p->data.failed = 0;

        p->current = p;
        p->large = NULL;
    }

    return p;
}

/* WRITE YOUR CODE HERE */
/* SUBMIT THIS PART */
/* ==BEGIN== */
void* mmpool_alloc(mmpool_t *pool, size_t size) {
    if(size > MMPOOL_MAX_ALLOC) {
        mmpool_large_t* new =  mmpool_alloc_large(size);
        mmpool_large_t* current = pool->large;
        if(current == NULL){
            pool->large = new;
            return new->alloc;
        }
        while(current != NULL){
            if(current->next == NULL){
                current->next = new;
                break;
            }
            current = current->next;
        }
        return new->alloc;
    }

    mmpool_t* p = pool->current;
    while (p != NULL){
        if(p->data.last + size <= p->data.end){
            p->data.last += size;
            return p->data.last - size;
        }else{
            if(p->data.next == NULL){
                p->data.next = mmpool_create();
            }
            p->data.failed++;
            if(p->data.failed > MMPOOL_MAX_FAILED){
                pool->current = p->data.next;
            }
            p = p->data.next;
        }
    }
    
}

mmpool_large_t* mmpool_alloc_large(size_t size) {
    mmpool_large_t* large = (mmpool_large_t*) malloc(sizeof(mmpool_large_t));
    large->alloc = malloc(size);
    large->next = NULL;
    return large;
}

void mmpool_destroy(mmpool_t *pool) {
    while(pool->large != NULL){
        mmpool_free_large(pool, pool->large->alloc);
    }
    while(pool != NULL){
        mmpool_t* next = pool->data.next;
        free(pool);
        pool = next;
    }
}

void mmpool_free_large(mmpool_t *pool, void *p) {
    mmpool_large_t* current = pool->large;
    mmpool_large_t* previous = NULL;
    while(current != NULL){
        if(current->alloc == p){
            if(previous == NULL){
                pool->large = current->next;
            }else{
                previous->next = current->next;
            }
            free(current->alloc);
            free(current);
            break;
        }
        previous = current;
        current = current->next;
    }
}

void mmpool_reset(mmpool_t *pool) {
    while(pool->large != NULL){
        mmpool_free_large(pool, pool->large->alloc);
    }

    while(pool != NULL){
        mmpool_t* next = pool->data.next;
        pool->data.last = (uint8_t*) pool + sizeof(mmpool_t);
        pool->data.failed = 0;
        pool->current = pool;
        pool = next;
    }
}