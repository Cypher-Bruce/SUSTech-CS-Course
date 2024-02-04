#include "match.h"

const char* match(const char* s, const char* ch){
    while(*s != '\0'){
        if(*s == *ch){
            return s;
        }
        s++;
    }
    return nullptr;
}    