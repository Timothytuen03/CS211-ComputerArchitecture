#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>

#define EXP_SZ 11
#define FRAC_SZ 52

int main(int argc, char *argv[]) {

    // SETUP

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return 0;
    }

    // first, read the number
    double value;
    // bool sign = false;
    // char sign1 = fgetc(fp);
    // if(fgetc(fp) == '-') {
    //     sign = true;
    // }
    fscanf(fp, "%lf", &value);
    // printf("sign: %c\n", sign1);
    // printf("value: %f\n", value);


    // the reference solution ('the easy way')
    // you are not allowed to print from this casted 'ref_bits' variable below
    // but, it is helpful for validating your solution
    unsigned long int ref_bits = *(unsigned long int*) &value;

    // THE SIGN BIT
    bool sign = value<0.0;
    float negInf = 1/value;
    if(negInf < 0) {
        sign = 1;
    }
   
    printf("%d_",sign);
    assert (sign == (1&ref_bits>>(EXP_SZ+FRAC_SZ))); // validate your result against the reference

    // THE EXP FIELD
    // find the exponent E such that the fraction will be a canonical fraction:
    // 1.0 <= fraction < 2.0
    double fraction = sign ? -value : value;

    signed short trial_exp=(1<<(EXP_SZ-1))-1; // start by assuming largest possible exp (before infinity)
    // do trial division until the proper exponent E is found
    /* ... */
    // unsigned int l = 0;
    // while((fraction < 1.0 || fraction >= 2.0)) {
    //     double x = fraction / pow(2, trial_exp);
    //     if(x >= 1.0 && x < 2.0) {
    //         break;
    //     }
    //     trial_exp = trial_exp-1;
    // }
    // trial_exp = l;
    // printf("\n%f\n", fraction);
    if(fraction >= 1) {
        // printf(">1\n");
        for(int i = 0; i < 1024; i++)
        {
            double x = fraction / pow(2, i);
            if(x >= 1.0 && x < 2.0) {
                trial_exp = i;
                fraction = x;
                // printf("end for loop");
                break;
            }
        }
    } else if(fraction > 0 && fraction < 1){
        for(int i = 0; i > -1023; i--)
        {
            double x = fraction / pow(2, i);
            // printf("i: %d\n", i);
            if(x >= 1.0 && x < 2.0) {
                trial_exp = i;
                fraction = x;
                break;
            }
        }
        // printf("s\n");
        if(trial_exp == 1023) {
            trial_exp = -1022;
            fraction = fraction / pow(2, trial_exp);
        }
    } else {
        trial_exp = 0;
    }
    // printf("\nfraction: %f, trial_exp: %d\n", fraction, trial_exp);

    unsigned short bias = (1<<(EXP_SZ-1))-1;
    signed short exp = trial_exp + bias;
    if(value == 0 || (fraction > 0 && fraction < 1)) {
        exp = 0;
    }
    // printf("exp: %d\n", exp);

    for ( int exp_index=EXP_SZ-1; 0<=exp_index; exp_index-- ) {
        bool exp_bit = 1&exp>>exp_index;
        printf("%d",exp_bit);
        assert (exp_bit == (1&ref_bits>>(exp_index+FRAC_SZ))); // validate your result against the reference
    }
    printf("_");
    // you get partial credit by getting the exp field correct
    // even if you print zeros for the frac field next
    // you should be able to pass test cases 0, 1, 2, 3

    // THE FRAC FIELD
    // prepare the canonical fraction such that:
    // 1.0 <= fraction < 2.0
    /* ... */
    if(fraction >= 1) {
        fraction = fraction -1;
    }
    
    // printf("\nfraction: %f\n", fraction);
    // int frac_bin = (int)fraction;
    // printf("frac_bin: %d\n", frac_bin);
    // printf("%d\n", FRAC_SZ);
    unsigned int ones = 0;
    bool frac_array[FRAC_SZ+1]; // one extra LSB bit for rounding
    for ( int frac_index=FRAC_SZ; 0<=frac_index; frac_index-- ) {
        frac_array[frac_index] = false; // frac set to zero to enable partial credit
        /* ... */
        // bool frac_bit = 1&frac_bin>>frac_index;
        // frac_array[frac_index] = frac_bit;
        fraction = fraction * 2;
        if(fraction >= 1) {
            ones = 1;
            fraction = fraction - 1;
        } else {
            ones = 0;
        }
        frac_array[frac_index] = ones;
    }

    // rounding
    /* ... */

    for ( int frac_index=FRAC_SZ-1; 0<=frac_index; frac_index-- ) {
        bool frac_bit = frac_array[frac_index+1]; // skipping the extra LSB bit for rounding
        printf("%d", frac_bit);
        assert (frac_bit == (1&ref_bits>>frac_index)); // validate your result against the reference
    }

}
