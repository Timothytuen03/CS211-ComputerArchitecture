#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define EXP_SZ 8
#define FRAC_SZ 23

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the binary number representation of float point number
    // char buff;
    // unsigned int binary = 0;
    double fracField = 0;
    signed int exponent = 0;
    bool binRep[EXP_SZ+FRAC_SZ+1];
    // printf("%d\n", EXP_SZ+FRAC_SZ);
    for (int i=EXP_SZ+FRAC_SZ; 0<=i; i--) { // read MSB first as that is what comes first in the file
        /* ... */
        char x = fgetc(fp);
        if(x == '0') {
            binRep[i]  = 0;
        } else {
            binRep[i] = 1;
        }

        if(i > 22 && i < 31 && x=='1') {
            exponent = exponent + pow(2, i-23);
            // printf("i = %d exponent = %d\n", i, exponent);
        }
        if( i < 23 && x=='1') {
            fracField = fracField + (1/pow(2, (23-i)));
            // printf("i = %d fracField = %f\n", i, fracField);
        }
    }

    // for(int i = 0; i <EXP_SZ+FRAC_SZ+1; i++)
    // {
    //     printf("%d", binRep[i]);
    // }

    // float number = *(float *)&binary; // you are not allowed to do this.

    /* ... */

    // E
    /* ... */
    signed int e = exponent - 127;
    // printf("exponent: %d, e: %d\n", exponent, e);

    // M
    /* ... */
    double m = 1+fracField;
    // printf("m: %f\n", m);

    bool sign = binRep[31];


    // https://www.tutorialspoint.com/c_standard_library/c_function_ldexp.htm
    double number = ldexp ( m, e );
    // printf("num: %f\n", number);
    // printf("sign: %d\n", sign);
    number = sign ? -number : number;
    printf("%e\n", number);

    return EXIT_SUCCESS;

}
