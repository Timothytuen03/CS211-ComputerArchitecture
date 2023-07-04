#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>
// https://www.tutorialspoint.com/c_standard_library/limits_h.htm
#include <limits.h>
// https://www.cplusplus.com/reference/cfloat/
#include <float.h>

#define FLOAT_SZ sizeof(float)*CHAR_BIT
#define EXP_SZ (FLOAT_SZ-FLT_MANT_DIG)
#define FRAC_SZ (FLT_MANT_DIG-1)

int main(int argc, char *argv[]) {

    // float value = *(float *) &binary; // you are not allowed to do this.
    // unsigned int binary = *(unsigned int*) &value; // you are not allowed to do this.

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the binary number representation of multiplier
    /* ... */
    bool multiplier[EXP_SZ+FRAC_SZ+1];
    for(int i = EXP_SZ+FRAC_SZ; i >= 0; i--) {
        char x = fgetc(fp);
            if(x == '1') {
                multiplier[i] = 1;
            } else {
                multiplier[i] = 0;
            }
    }
    fgetc(fp);

    // notice that you are reading two different lines; caution with reading
    /* ... */
    bool multiplicand[EXP_SZ+FRAC_SZ+1];
    for(int i = EXP_SZ+FRAC_SZ; i >= 0; i--) {
        char x = fgetc(fp);
        if(x == '1') {
            multiplicand[i] = 1;
        } else {
            multiplicand[i] = 0;
        }
    }

    // printf("EXP_SZ+FRAC_SZ: %ld\n", EXP_SZ+FRAC_SZ);
    // for(int i = EXP_SZ+FRAC_SZ; i >= 0; i--) {
    //     printf("%d", multiplier[i]);
    // }
    // printf("\n");
    // for(int i = EXP_SZ+FRAC_SZ; i >= 0; i--) {
    //     printf("%d", multiplicand[i]);
    // }
    // printf("\n");

    // first, read the binary number representation of multiplcand
    /* ... */

    // float product = *(float *) &multiplier * *(float *) &multiplicand; // you are not allowed to print from this.
    // unsigned int ref_bits = *(unsigned int *) &product; // you are not allowed to print from this. But you can use it to validate your solution.

    // SIGN
    /* ... */
    bool sign = multiplier[31] ^ multiplicand[31];
    printf("%d_",sign);
    // assert (sign == (1&ref_bits>>(EXP_SZ+FRAC_SZ)));

    // EXP
    // get the exp field of the multiplier and multiplicand
    /* ... */

    signed int exponentMultiplier = 0;
    signed int exponentMultiplicand = 0;
    for(int i = 23; i < 31; i++)
    {

        if(multiplier[i] == 1) {
            exponentMultiplier = exponentMultiplier + pow(2, i-23);
        }

        if(multiplicand[i] == 1) {
            exponentMultiplicand = exponentMultiplicand + pow(2, i-23);
        }
    }

    // add the two exp together
    /* ... */
    // printf("\nexpMultiplicand: %d, expMultiplier: %d\n", exponentMultiplicand, exponentMultiplier);
    // signed int eMultiplicand = exponentMultiplicand - 127;
    // signed int eMultiplier = exponentMultiplier - 127;
    signed int exp = exponentMultiplicand + exponentMultiplier;
    
    // subtract bias
    /* ... */
    exp = exp - 127;
    // signed int e = eMultiplicand + eMultiplier;
    // printf("e: %d\n", e);

    // FRAC
    // get the frac field of the multiplier and multiplicand
    /* ... */
    double fracMultiplier = 0;
    double fracMultiplicand = 0;
    for(int i = 22; i >= 0; i--) {
        if(multiplier[i] == true) {
            fracMultiplier = fracMultiplier + (1/pow(2, (23-i)));
            // printf("multiplier true at i = %d\n", i);
        }
        if(multiplicand[i] == true) {
            fracMultiplicand = fracMultiplicand + (1/pow(2, (23-i)));
        }
    }
    // printf("fracMultiplier: %.20Lf, fracMultiplicand: %.20Lf\n", fracMultiplier, fracMultiplicand);
    // assuming that the input numbers are normalized floating point numbers, add back the implied leading 1 in the mantissa
    /* ... */
    // double mantissaMultiplier = 1 + fracMultiplier;
    // double mantissaMultiplicand = 1 + fracMultiplicand;

    // multiply the mantissas
    /* ... */
    double mantissa = ((1+fracMultiplier) * (1+fracMultiplicand));
    // printf("mantissa: %.20Lf\n", mantissa);


    // overflow and normalize
    /* ... */
    // if(e < -126 || e > 127) {

    // }

    // rounding
    /* ... */
    // printf("exp: %d\n", exp);


    // move decimal point
    /* ... */
    while(mantissa >= 2) {
        // int div = (int)mantissa % 10;
        mantissa = mantissa/2;
        exp = exp + 1;
    }
    // if(mantissa >= 2) {
    //     mantissa = mantissa>>1;
    // }
    // printf("exp2: %d\n", exp);
    // printf("mantissa2: %.20Lf\n", mantissa);
    double fraction = mantissa-1;
    // if(mantissa >= 1)
    //     fraction = mantissa-1;
    // else 
    //     fraction = mantissa;
    // printf("fraction: %.20Lf\n", fraction);

    // long double fracHolder = fraction;
   
    bool frac_array2[FRAC_SZ+1];
    int count = 0;
    for(int i = FRAC_SZ; i >= 0; i--) {
        count = count-1;
        double power = 1/pow(2, FRAC_SZ+1-i);
        if(fraction >= power) {
            frac_array2[i] = true;
            fraction = fraction-power;
        } else {
            frac_array2[i] = false;
        }
    }

    if(frac_array2[0]) {
        bool carry = true;
        for(int i = 0; i < 8; i++) {
            if(carry) {
                if(frac_array2[i] == false) {
                    carry = false;
                }
                // if(frac_array2[i] == 0) {
                //     frac_array2[i] = 1;
                // } else if(frac_array2[i] == 1) {
                //     frac_array2[i] = 0;
                // }
                frac_array2[i] = !frac_array2[i];
            }
        }
    }



    // if(!(ceil(log2(fraction)) == floor(log2(fraction)))) {
    //     long double fracTest = fraction;
    //     int index = 23;
    //     int lastOne = 0;
    //     for ( int frac_index=FRAC_SZ; frac_index>=0; frac_index-- ) {
    //         fracHolder = fracHolder * 2;

    //         // printf("fracHolder: %Lf, index: %d\n", fracHolder, frac_index);
            
    //         if(fracHolder >= 1) {
    //             // printf("minus one\n");
    //             fracHolder = fracHolder - 1;
    //             lastOne = frac_index;
    //         }
    //         else{
    //             if(frac_index == 1) {
    //                 index = 23;
    //                 // printf("zero\n");
    //             } else if(lastOne-1 == frac_index ){
    //                 // index = 23 - (frac_index+1);
    //                 // printf("lastOne then Zero: %d\n", lastOne);
    //                 index = 24-(frac_index-1);
    //             }
    //             // printf("fracHolder: %Lf, index: %d\n", fracHolder, index);
    //         // printf("index: %d\n", frac_index);
    //         }
    //     }
    //     // printf("lastOne: %d\n", lastOne);

    //     // printf("fracTest Before: %.20Lf\n", fracTest);
    //     while(fracTest > (1/(pow(2, 23)))) {
    //         fracTest = fracTest * 1/2;
    //     }
    //     // printf("index: %d\n", index);
    //     // printf("fracTest After1: %.20Lf\n", fracTest);
    //     fracTest = (1/(pow(2, index))) - fracTest;
    //     // printf("fracTest After2: %.20Lf\n", fracTest);

    //     fraction = fraction + fracTest;
    // }
    // printf("fraction after: %.20Lf\n", fraction);

    unsigned int frac = 0;
    for(int index = FRAC_SZ-1; index >= 0; index--) {
        bool fraction_bit = frac_array2[index+1];
        if(fraction_bit) {
            frac = frac + (1<<index);
        }
    }
    // bool frac_array[FRAC_SZ+1]; // one extra LSB bit for rounding
    // for ( int frac_index=FRAC_SZ; 0<=frac_index; frac_index-- ) {
    //     // frac_array[frac_index] = false; // frac set to zero to enable partial credit
    //     /* ... */
    //     // bool frac_bit = 1&frac_bin>>frac_index;
    //     // frac_array[frac_index] = frac_bit;
    //     fraction = fraction * 2;
    //     if(fraction >= 1) {
    //         ones = 1;
    //         fraction = fraction - 1;
    //     } else {
    //         ones = 0;
    //     }
    //     frac_array[frac_index] = ones;
    // }
    // printf("firstZero: %d\n", firstZero);

    // fraction = fracHolder;

    // if(!(ceil(log2(fraction)) == floor(log2(fraction)))) {
    //         // fraction = fracHolder;
    //     long double fracTest = fracHolder;

    //         // printf("fracTest Before: %.20Lf\n", fracTest);
    //     while(fracTest > (1/(pow(2, 22)))) {
    //             fracTest = fracTest * 1/2;
    //             // printf("fracTest during: %.20Lf\n", fracTest);
    //             // count = count + 1;
    //     }

    //         // printf("fracTest After1: %.20Lf\n", fracTest);
    //         fracTest = (24-firstZero)/(pow(2, 22)) - fracTest;
    //         // printf("fracTest After2: %.20Lf\n", fracTest);
    //         // if(fracTest < (1/pow(2, 23))) {
    //         //     fraction = fraction - fracTest;
    //         // } else {
    //         //     fraction = fraction + fracTest;
    //         // }
    //     fraction = fraction + fracTest;
    // }
    // printf("fraction after: %.20Lf\n", fraction);

    // for ( int frac_index=FRAC_SZ; 0<=frac_index; frac_index-- ) {
    //     fraction = fraction * 2;
    //     if(fraction >= 1) {
    //         ones = 1;
    //         fraction = fraction - 1;
    //     } else {
    //         ones = 0;
    //     }
    //     frac_array[frac_index] = ones;
    // }


    // PRINTING
    // print exp
    for ( int bit_index=EXP_SZ-1; 0<=bit_index; bit_index-- ) {
        bool trial_bit = 1&exp>>bit_index;
        printf("%d",trial_bit);
        // assert (trial_bit == (1&ref_bits>>(bit_index+FRAC_SZ)));
    }
    printf("_");

    // // print frac
    for ( int bit_index=FRAC_SZ-1; 0<=bit_index; bit_index-- ) {
        bool trial_bit = 1&frac>>bit_index;
        printf("%d",trial_bit);
        // bool trial_bit = frac_array[bit_index+1]; // skipping the extra LSB bit for rounding
        // printf("%d", trial_bit);
        // assert (trial_bit == (1&ref_bits>>(bit_index)));
    }

    return(EXIT_SUCCESS);

}
