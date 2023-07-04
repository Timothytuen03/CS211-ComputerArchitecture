#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
// https://www.tutorialspoint.com/c_standard_library/limits_h.htm
#include <limits.h>

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP
    // printf("%d", CHAR_BIT);

    // first, read the minuend (number to be subtracted from)
    // char buff;
    // char* binary = fgets(buff, 256, fp);
    bool minuend[CHAR_BIT]; // suggested that you store bits as array of bools; minuend[0] is the LSB
    for (int i=CHAR_BIT-1; 0<=i; i--) { // read MSB first as that is what comes first in the file
        /* ... */
        // minuend[i] = binary[i];
        char x = fgetc(fp);
        // printf("bool %c ", x);
        if(x == '0') {
            minuend[i] = 0;
        } else {
            minuend[i] = 1;
        }
    }
    fgetc(fp);
    // for(int i = 0; i < CHAR_BIT; i++)
    // {
    //     printf("%d", minuend[i]);
    // }
    // printf("minuend\n");

    // notice that you are reading two different lines; caution with reading
    /* ... */

    // char* binary2 = fgets(buff, 256, fp);

    // second, read the subtrahend (number to subtract)
    bool subtrahend[CHAR_BIT]; // suggested that you store bits as array of bools; subtrahend[0] is the LSB
    for (int i=CHAR_BIT-1; 0<=i; i--) { // read MSB first as that is what comes first in the file
        /* ... */
        // subtrahend[i] = binary2[i];
        char x = fgetc(fp);
        // printf("bool %c ", x);
        if(x == '0') {
            subtrahend[i] = 0;
        } else {
            subtrahend[i] = 1;
        }
    }
    
    // for(int i = 0; i < CHAR_BIT; i++)
    // {
    //     printf("%d", subtrahend[i]);
    // }
    // printf("subtrahend\n");
  

    // WE WILL DO SUBTRACTION BY NEGATING THE SUBTRAHEND AND ADD THAT TO THE MINUEND

    // Negate the subtrahend
    // flip all bits
    /* ... */
    for(int i = 0; i < CHAR_BIT; i++)
    {
        if(subtrahend[i] == 1)
            subtrahend[i] = 0;
        else
            subtrahend[i] = 1;
    }

    // add one
    bool carry = true; // to implement the 'add one' logic, we do binary addition logic with carry set to true at the beginning
    for (int i=0; i<CHAR_BIT; i++) { // iterate from LSB to MSB
        /* ... */
        if(carry) {
            if(subtrahend[i] == 0) {
                subtrahend[i] = 1;
                carry = false;
            } else {
                subtrahend[i] = 0;
            }
        }
    }

    // for(int i = 0; i < CHAR_BIT; i++)
    // {
    //     printf("%d", subtrahend[i]);
    // }
    // printf("subtrahend\n");

    // Add the minuend and the negated subtrahend
    bool difference[CHAR_BIT];
    /* ... */
    bool carry2 = false;
    for(int i = 0; i < CHAR_BIT; i++) {
        if(carry2) {
            if(minuend[i]==1) {
                if(subtrahend[i]==1) {
                    difference[i] = 1;
                } else {
                    difference[i] = 0;
                }
            } else {
                if(subtrahend[i]==1) {
                    difference[i] = 0;
                } else {
                    difference[i] = 1;
                    carry2 = false;
                }
            }
        } else{
            if(minuend[i]==1) {
                if(subtrahend[i]==1) {
                    difference[i] = 0;
                    carry2 = true;
                } else {
                    difference[i] = 1;
                }
            } else {
                if(subtrahend[i]==1) {
                    difference[i] = 1;
                } else {
                    difference[i] = 0;
                }
            }
        }
    }

    // print the difference bit string
    for (int i=CHAR_BIT-1; 0<=i; i--)
        printf("%d",difference[i]);

    return EXIT_SUCCESS;

}
