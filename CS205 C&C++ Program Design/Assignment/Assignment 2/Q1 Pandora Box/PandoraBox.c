#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct PandoraBox{
    int item_count; // Number of items stored in the PandoraBox.
    int *item_size; // Array of item sizes in bytes.
    void *data;     // A type-agnostic pointer to store data.
} Panbox;

/*=+=+=+=+=+=+=+=+=+=+=Your code starts here=+=+=+=+=+=+=+=+=+=+=*/

void *mycpy(void *dst, const void *src, size_t size){
    if(dst == NULL || src == NULL || size < 0){
        return NULL;
    }
    char *d = dst;
    const char *s = src;
    while (size--){
        *d = *s;
        d++;
        s++;
    }
    return dst;
}

/*
Function: See memcpy in <string.h>

Notes:
- It is not a must to implement this function, but with it you can implement the following functions more easily.
*/

void *myset(void *dst, int c, size_t size){
    if(dst == NULL || size < 0){
        return NULL;
    }
    unsigned char d = c;
    char *e = dst;
    while (size--){
        *e = d;
        e++;
    }
    return dst;
}

/*
Function: See memset in <string.h>

Notes:
- It is not a must to implement this function, but with it you can implement the following functions more easily.
*/

Panbox *create(int item_count, int item_size[]){
    if(item_count < 0 || (item_count > 0 && item_size == NULL)){
        return NULL;
    }
    if(item_size != NULL){
        for (int i = 0; i < item_count; i++){
            if(*(item_size + i) <= 0){
                return NULL;
            }
        }
    }

    int sum_size = 0;
    if(item_size != NULL){
        for (int i = 0; i < item_count; i++){
            sum_size += *(item_size + i);
        }
    }

    struct PandoraBox * newp = (struct PandoraBox*)malloc(sizeof(struct PandoraBox));
    if(newp != NULL){
        newp->item_count = item_count;
        if(item_count != 0){
            newp->item_size = malloc(sizeof(int) * item_count);
            if(newp->item_size == NULL){
                return NULL;
            }
            newp->data = malloc(sum_size);
            if(newp->data == NULL){
                free(newp->item_size);
                return NULL;
            }

            mycpy(newp->item_size, item_size, sizeof(int) * item_count);
            myset(newp->data, 0, sum_size);
        }else{
            newp->item_size = NULL;
            newp->data = NULL;
        }
    }

    return newp;
}

/*
Function: Create an empty PandoraBox with specified item counts and their respective sizes.

Parameters:
- item_count: The number of items to be stored in the PandoraBox.
- item_size: An array specifying the size (in bytes) of each item.

Returns:
A pointer to the created PandoraBox.

Note:
- You CAN create a Panbox with no initial items, i.e., item_count=0 and item_size=NULL.
- However, negative item_count is not supported, and item_size should not be NULL when item_count is non-zero.
- The size of any item should be positive.
- Make sure that the memory newly allocated is filled with 0s.
- You should return NULL immediately if any failure happens.
- Good news: GuTao guarantees that [item_size, item_size+item_count-1] is allocated in advance, unless item_size is NULL.
*/

void append(Panbox *panbox, void *value, int width){
    if(panbox == NULL || panbox->item_count < 0 || value == NULL || width <= 0){
        return;
    }
    if(panbox->item_count != 0 && panbox->item_size == NULL){
        return;
    }

    if(panbox->item_size != NULL){
        for (int i = 0; i < panbox->item_count; i++){
            if(*(panbox->item_size + i) <= 0){
                return;
            }
        }
    }

    if(panbox->item_size != NULL){
        int sum_size = 0;
        if(panbox->item_count != 0 && panbox->item_size != NULL){
            for (int i = 0; i < panbox->item_count; i++){
                sum_size += *(panbox->item_size + i);
            }
        }
        int* temp_item_size = realloc(panbox->item_size, sizeof(int) * (panbox->item_count + 1));
        if(temp_item_size == NULL){
            return;
        }
        void* temp_data = realloc(panbox->data, sum_size + width);
        if(temp_data == NULL){
            return;
        }
        panbox->item_size = temp_item_size;
        *(panbox->item_size + panbox->item_count) = width;
        panbox->data = temp_data;
        mycpy(panbox->data + sum_size, value, width);
    }else{
        panbox->item_size = malloc(sizeof(int));
        if(panbox->item_size == NULL){
            return;
        }
        panbox->data = malloc(width);
        if(panbox->data == NULL){
            free(panbox->item_size);
            return;
        }
        *(panbox->item_size) = width;
        mycpy(panbox->data, value, width);
    }

    panbox->item_count++;
    return;
}

/*
Function: Extend the memory of the PandoraBox to append an item.

Parameters:
- panbox: A pointer to the PandoraBox.
- value: A pointer to the data to be added to the PandoraBox.
- width: The size of the data in value (in bytes).

Note:
- You should not append this item if any failure happens.
- Good news: GuTao guarantees that [value, value+width-1] is allocated in advance, unless value is NULL.
*/

void write(Panbox *panbox, int item_id, void *value, int width){
    if(panbox == NULL || panbox->item_count < 0 || panbox->item_size == NULL || panbox->data == NULL || value == NULL || width <= 0 || item_id < 0 || item_id >= panbox->item_count || width > *(panbox->item_size + item_id)){
        return;
    }
    for (int i = 0; i < panbox->item_count; i++){
        if(*(panbox->item_size + i) <= 0){
            return;
        }
    }

    int sum_size = 0;
    for (int i = 0; i < item_id; i++){
        sum_size += *(panbox->item_size + i);
    }
    mycpy(panbox->data + sum_size, value, width);

    if(width < *(panbox->item_size + item_id)){
        char *c = value + width - 1;
        myset(panbox->data + sum_size + width, ((unsigned char)*c <= 127 ? 0 : 255), *(panbox->item_size + item_id) - width);
    }

    return;
}
/*
Function: COPY the data stored in 'value' into the segment of the item with index item_id in the PandoraBox.

Parameters:
- panbox: A pointer to the PandoraBox.
- item_id: The index of the item in the PandoraBox where data will be written.
- value: A pointer to the data that needs to be written to the PandoraBox.
- width: The size of the data in value (in bytes).

Notes:
- If 'item_id' is out of valid bounds, the data won't be written.
- If the item size cannot hold all data in value, the data won't be written.
- If the width of value is smaller than the item size, the data will be placed in the lower address and padded with the highest bit.
- Example: inserting a 1-byte value into a 2-byte item: (0x7f -> 0x007f), (0xf7 -> 0xfff7).
- The item_size should not change in this function.
- You should not write the item if any failure happens.
- Good news: GuTao guarantees that [value, value+width-1] is allocated in advance, unless value is NULL.
*/

void *read(Panbox *panbox, int item_id){
    if(panbox == NULL || panbox->item_count < 0 || panbox->item_size == NULL || panbox->data == NULL || item_id < 0 || item_id >= panbox->item_count || panbox->item_count == 0){
        return NULL;
    }
    for (int i = 0; i < panbox->item_count; i++){
        if(*(panbox->item_size + i) <= 0){
            return NULL;
        }
    }

    void* item = malloc(*(panbox->item_size + item_id));
    if(item == NULL){
        return NULL;
    }

    int sum_size = 0;
    for (int i = 0; i < item_id; i++){
        sum_size += *(panbox->item_size + i);
    }
    mycpy(item, panbox->data + sum_size, *(panbox->item_size + item_id));

    return item;
}
/*
Function: COPY the item with index item_id from the PandoraBox into a newly allocated memory, and return a pointer to
this memory.

Parameters:
- panbox: A pointer to the PandoraBox.
- item_id: The index of the item in the PandoraBox that should be read.

Returns:
A pointer to the newly allocated memory containing a copy of the specified item.

Notes:
- You should return NULL immediately if any failure happens.
*/

void destroy(Panbox *panbox){
    if(panbox == NULL){
        return;
    }

    if(panbox->item_size != NULL){
        free(panbox->item_size);
    }
    if(panbox->data != NULL){
        free(panbox->data);
    }
    free(panbox);
    return;
}
/*
Function: Deallocate the memory associated with the PandoraBox and its data.

Parameters:
- panbox: A pointer to the PandoraBox that should be destroyed.

Notes:
- This function should be used when the PandoraBox is no longer needed to prevent memory leak.
- You should check before freeing a pointer.
*/

void printc(void *value, int width){
    if(value == NULL || width <= 0){
        return;
    }

    char *c = value;
    int print_flag = 0;
    for (int i = 0; i < width; i++){
        if(*(c + i) < 0){
            printf("- ");
            print_flag = 1;
        }else if(*(c + i) > 32 && *(c + i) != 127){
            printf("%c ", *(c + i));
            print_flag = 1;
        }
    }
    if(print_flag == 1){
        printf("\n");
    }

    return;
}
/*
Function: Print every 1 byte (char) in [value, value+width-1] as a character, split by a space.

Notes:
- Good news: GuTao guarantees that [value, value+width-1] is allocated in advance, unless value is NULL.
- If the value of the byte is in [0, 32] or equals to 127(Del), do not print anything(they are special characters).
- e.g., for an empty box with all 0, the destroy of this box will invoke printc(), but should not print anything.
- If the value of the byte is negative, print '-' instead.
- You should return immediately if any failure happens.
- Please print a `\n` before returning, unless you print nothing in this function.
*/

void printx(void *value, int width){
    if(value == NULL || width <= 0){
        return;
    }

    printf("0x");
    unsigned char *c = value;
    for (int i = width - 1; i >= 0; i--){
        printf("%02x", *(c + i));
        //printf("%02x ", *(c + i));
    }
    printf("\n");
    return;
}
/*
Function: Print the value in [value, value+width-1] as a single hexadecimal, in format of 0x12345678.

Notes:
- Good news: GuTao guarantees that [value, value+width-1] is allocated in advance, unless value is NULL.
- You should return immediately if any failure happens.
- If the highest byte is less than 0x10, please output a leading 0, e.g., 0x0514.
- Leading zeros are OK, if *(value) = 0x000f, width = 2, then print 0x000f. (print even number of characters)
- Please print a `\n` before returning, unless you print nothing in this function.
*/

void hex2byte(void *dst, char *hex){
    if(dst == NULL || hex == NULL || strlen(hex) <= 2 || *(hex) != '0' || *(hex + 1) != 'x'){
        return;
    }
    for (int i = 2; i < strlen(hex); i++){
        if(!((*(hex + i) >= '0' && *(hex + i) <= '9') || (*(hex + i) >= 'a' && *(hex + i) <= 'f'))){
            return;
        }
    }

    int num_of_byte = (strlen(hex) - 1) / 2;
    char *c = (char*)malloc(num_of_byte * 2);
    if(c == NULL){
        return;
    }
    unsigned char* bytes = (unsigned char*)malloc(num_of_byte);
    if(bytes == NULL){
        free(c);
        return;
    }
    myset(bytes, 0, num_of_byte);

    mycpy(c + (strlen(hex) % 2), hex + 2, num_of_byte * 2 - (strlen(hex) % 2));
    if(strlen(hex) % 2 == 1){
        *(c) = '0';
    }

    for (int i = 0; i < num_of_byte; i++){
        int digit_1 = *(c + 2 * i) > '9' ? *(c + 2 * i) - 'a' + 10 : *(c + 2 * i) - '0';
        int digit_2 = *(c + 2 * i + 1) > '9' ? *(c + 2 * i + 1) - 'a' + 10 : *(c + 2 * i + 1) - '0';
        *(bytes + num_of_byte - 1 - i) = digit_1 * 16 + digit_2;
    }

    /*
    printf("\nhex2byte result:\n");
    printc(bytes, num_of_byte);
    printx(bytes, num_of_byte);
    */

    mycpy(dst, bytes, num_of_byte);

    free(c);
    free(bytes);
    return;
}
/*
Function: For the given hex string "0x12345678", write 0x12345678 into dst.

Notes:
- The length of hex might be ODD, make sure to put all data into dst. For example, "0xfff"(12 bits) should be stored
using 2 bytes as 0x0fff(different from write(), just add a padding 0 here).
- You should return immediately if any failure happens.
*/


/*=+=+=+=+=+=+=+=+=+=+=Your code ends here=+=+=+=+=+=+=+=+=+=+=*/

void show_info(Panbox *p)
{
    if (p != NULL)
    {
        printf("%d\n", p->item_count);
        for (int i = 0; i < p->item_count; i++)
        {
            printf("%d ", p->item_size[i]);
        }
        printf("\n");
    }
    else
    {
        printf("NULL\n");
    }
}

Panbox *p = NULL;

int main(){
    /*
    int T;
    scanf("%d", &T);
    while (T--)
    {
        char op;
        scanf(" %c", &op);
        switch (op)
        {
            case 'C': {
                int item_count;
                scanf("%d", &item_count);
                int *item_size = (int *)malloc(item_count * sizeof(int));
                for (int i = 0; i < item_count; i++)
                {
                    scanf("%d", &item_size[i]);
                }
                p = create(item_count, item_size);
                free(item_size);
                break;
            }
            case 'D': {
                if (p != NULL)
                {
                    for (int i = p->item_count - 1; i >= 0; i--)
                    {
                        void *data = read(p, i);
                        if (data != NULL)
                        {
                            printc(data, p->item_size[i]);
                        }
                    }
                }
                destroy(p);
                break;
            }
            case 'A': {
                int len;
                scanf("%d", &len);
                char *hex_str = (char *)malloc(len + 1);
                scanf("%s", hex_str);
                int num_of_byte = (strlen(hex_str) - 1) / 2;
                void *data = (void *)malloc(num_of_byte);
                hex2byte(data, hex_str);
                append(p, data, num_of_byte);
                free(hex_str);
                free(data);
                break;
            }
            case 'W': {
                int item_id;
                scanf("%d", &item_id);
                int len;
                scanf("%d", &len);
                char *hex_str = (char *)malloc(len + 1);
                scanf("%s", hex_str);
                int num_of_byte = (strlen(hex_str) - 1) / 2;
                void *data = (void *)malloc(num_of_byte);
                hex2byte(data, hex_str);
                write(p, item_id, data, num_of_byte);
                free(hex_str);
                free(data);
                break;
            }
            case 'R': {
                int item_id;
                scanf("%d", &item_id);
                int is_printc;
                scanf("%d", &is_printc);
                void *data = read(p, item_id);
                if (data != NULL)
                {
                    if (is_printc)
                    {
                        printc(data, p->item_size[item_id]);
                    }
                    else
                    {
                        printx(data, p->item_size[item_id]);
                    }
                }
                break;
            }
            case 'Q': {
                show_info(p);
                break;
            }
            default: {
                break;
            }
        }
    }
    */
    int is[] = {10, 20};
    char val[] = "GuTao";
    Panbox *u = create(2, is);
    write(u, 0, val, 5);
    void *read_out = read(u, 0);
    printc(read_out, 5); // G u T a o
    printx(read_out, 5);
    return 0;
}