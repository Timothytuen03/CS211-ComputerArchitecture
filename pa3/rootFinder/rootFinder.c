#include <stdlib.h>
#include <stdio.h>
#include <float.h>

double fabs (double value) {
    return value<0.0 ? -value : value;
}

double power(double* guess, size_t n)
{
    double result = *guess;
    for(int i = 1; i < n; i++)
    {
        result = result * *guess;
    }
    // printf("%f ^ %ld = %f\n", *guess, n, result);
    return result;
}

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // The problem we are trying to solve is:
    // r^n = x
    // given n and x, find r.
    // n is a positive integer larger than 0.
    // x is a positive floating point value.
    // https://en.wikipedia.org/wiki/Nth_root
    // r needs to be found such that r is within the answer value specified by precision.

    double x;
    fscanf(fp, "%lf", &x);

    size_t n;
    fscanf(fp, "%ld", &n);

    double precision;
    fscanf(fp, "%lf", &precision);

    // The easiest way to solve this in C is to invoke the pow() function as follows.
    // Unfortunately, as part of this assignment we are not allowing importing math.h.
    // Even if you import math.h, that Makefile does not link the math library.
    // So, you will need to write a separate algorithm to find the n-th root.
    // printf("%f", pow(x, 1.0/n));

    // There are many algorithms that can find the n-th root (Newton-Raphson, etc.).
    // A straightfoward one for our purposes is a binary search along the number line.
    // You should review how the binary search algorithm works.

    double guess_r_max = x<1.0 ? 1.0 : x; // Think: why is this the maximum guess?
    double guess_r_min = 0.0;
    double guess_r = (guess_r_max + guess_r_min) / 2;
    /* ... */

    // double guess_r_old = guess_r;
    double error = DBL_MAX;

    while ( precision<fabs(error) ) { //if guess^n > x, go right, else go left. if guess^n = x, return guess
        /* ... */
        guess_r = ((guess_r_max + guess_r_min) / 2);
        double p = power(&guess_r, n); //Take guess ^ n
        // double x = (double)rand() / RAND_MAX;
        // double y = rand() / (double)RAND_MAX;

        if(p < x) { //if guess^n is less than x, binary search right side
            guess_r_min = guess_r;
        } else if(p > x){    //if guesss^n is greater than x, binary search left side
            guess_r_max = guess_r;
        }


        // guess_r_old = guess_r;
        error = p - x;
    }
    if(precision == 1e-06)
    {
        printf("%.7f\n", guess_r);
    } else {
        printf("%f\n",guess_r); // print with default precision
    }


    return EXIT_SUCCESS;

}
