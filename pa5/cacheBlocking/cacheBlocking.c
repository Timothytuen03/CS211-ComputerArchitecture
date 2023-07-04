#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

/* Markers used to bound trace regions of interest */
volatile char MARKER_START, MARKER_END;

int main(int argc, char* argv[])
{

    /* Record marker addresses */
    FILE* marker_fp = fopen(".marker","w");
    assert(marker_fp);
    fprintf(marker_fp, "%llx\n%llx",
        (unsigned long long int) &MARKER_START,
        (unsigned long long int) &MARKER_END );
    fclose(marker_fp);

    if (argc!=3) {
        printf("Usage: ./cacheBlocking <matrix_a_file> <matrix_b_file>\n");
        exit(EXIT_FAILURE);
    }

    FILE* matrix_a_fp = fopen(argv[1], "r");
    if (!matrix_a_fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    size_t n;
    int ret = fscanf(matrix_a_fp, "%ld\n", &n);
    assert (ret==1);
    int* a = calloc( n*n, sizeof(int) );
    for ( size_t i=0; i<n; i++ ) {
        for ( size_t k=0; k<n; k++ ) {
            ret = fscanf(matrix_a_fp, "%d ", &a[i*n+k]);
            assert (ret==1);
        }
        ret = fscanf(matrix_a_fp, "\n");
    }
    fclose(matrix_a_fp);

    FILE* matrix_b_fp = fopen(argv[2], "r");
    if (!matrix_b_fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    size_t m;
    ret = fscanf(matrix_b_fp, "%ld\n", &m);
    assert (ret==1);
    assert( n==m );
    int* b = calloc( n*n, sizeof(int) );
    for ( size_t k=0; k<n; k++ ) {
        for ( size_t j=0; j<n; j++ ) {
            ret = fscanf(matrix_b_fp, "%d ", &b[k*n+j]);
            assert (ret==1);
        }
        ret = fscanf(matrix_b_fp, "\n");
    }
    fclose(matrix_b_fp);

    int* c = calloc( n*n, sizeof(int) );
    MARKER_START = 211;

    // kij
    // for ( size_t k=0; k<n; k++ ) {
    //     for ( size_t i=0; i<n; i++ ) {
    //         int r = a[i*n+k];
    //         for ( size_t j=0; j<n; j++ ) {
    //             c[i*n+j] += r * b[k*n+j];
    //         }
    //     }
    // }

    // ijk
    // for ( size_t i=0; i<n; i++ ) {
    //     for ( size_t j=0; j<n; j++ ) {
    //         int sum = c[i*n+j];
    //         for ( size_t k=0; k<n; k++ ) {
    //             sum += a[i*n+k] * b[k*n+j];
    //         }
    //         c[i*n+j] = sum;
    //     }
    // }

    // jki
    // for ( size_t j=0; j<n; j++ ) {
    //     for ( size_t k=0; k<n; k++ ) {
    //         int r = b[k*n+j];
    //         for ( size_t i=0; i<n; i++ ) {
    //             c[i*n+j] += a[i*n+k] * r;
    //         }
    //     }
    // }

    // printf("n: %ld\n", n);
    //ikj - Passes 20/30
    // for(size_t i = 0; i < n; i++) {
    //     for(size_t k = 0; k < n; k++) {
    //         int r = a[i*n+k];
    //         for(size_t j = 0; j < n; j++) {
    //             c[i*n+j] += r * b[k*n+j];
    //         }
    //     }
    // }

    // int en = b * (n/b);
    //Blocking - Passes 10/30
    // size_t bsize = 4;
    // for(size_t i = 0; i < n; i+=bsize) {
    //     for(size_t j = 0; j < n; j+=bsize) {
    //         for(size_t k = 0; k < n; k+=bsize) {
    //             for(size_t i1 = i; i1 < i+bsize; i1++) {
    //                 for(size_t j1 = j; j1 < j+bsize; j1++) {
    //                     for(size_t k1 = k; k1 < k+bsize; k1++) {
    //                         c[i1*n+j1] += a[i1*n+k1]*b[k1*n+j1];
    //                     }
    //                 }
    //             }
    //         }
    //     }
    // }

    //Blocking 2 - CSAPP
    register size_t bSize = 4;
    for(  size_t i = 0; i < n; i += bSize) {
        for(  size_t k = 0; k < n; k+= bSize) {
            for(  size_t j = 0; j < n; j+= bSize) {
                // BxB mini Matrix Multiplication
                for( register size_t i1 = i; i1 < i+bSize; i1++) {
                    for( register size_t k1 = k; k1 < k+bSize; k1++) {
                         int r = a[i1*n+k1];
                        for( register size_t j1 = j; j1 < j+bSize; j1++) {
                            c[i1*n+j1] += r*b[k1*n+j1];
                        }
                    }
                }
            }
        }
    }

    // register size_t bSize = 4;
    // register size_t en = bSize * (n/bSize);
    // for(register size_t j = 0; j < en; j+= bSize) {
    //     for(register size_t k = 0; k < en; k += bSize) {
    //         for(register size_t i = 0; i < n; i++) {
    //             for(register size_t k1 = k; k1 < k + bSize; k1++) {
    //                 int r = a[i*n+k1];
    //                 for(register size_t j1 = j; j1 < j + bSize; j1++) {
    //                     c[i*n+j1] += r*b[k1*n+j1];
    //                 }
    //             }
    //         }
    //     }
    // }

    //Blocking 3 - LINKED IN DIRECTIONS
    // double sum;
    // int bSize = 4;
    // int en = bSize * (n/bSize);

    // for(size_t kk = 0; kk < en; kk+=bSize) {
    //     for(size_t jj = 0; jj < en; jj+=bSize) {
    //         for(size_t i = 0; i < n; i++) {
    //             for(size_t j = jj; j < jj+bSize; j++) {
    //                 sum = c[i*n+j];
    //                 for(size_t k = kk; k < kk+bSize; k++) {
    //                     sum += a[i*n+k]*b[k*n+j];
    //                 }
    //                 c[i*n+j] = sum;
    //             }
    //         }
    //     }
    // }


    //
    // size_t bSize = 1;
    // for(size_t ii = 1; ii < n; ii++) {
    //     for(size_t jj = 1; jj < n; jj++) {
    //         for(size_t kk = 1; kk < n; kk++) {
    //             for(size_t i = (ii-1)*bSize; i < ii*bSize; i++) {
    //                 for(size_t j = (jj-1)*bSize; j < jj*bSize; j++) {
    //                     for(size_t k = (kk-1)*bSize; k < kk*bSize; k++) {
    //                         c[i*n+j] += a[i*n+k] * b[k*n+j];
    //                     }
    //                 }
    //             }
    //         }
    //     }
    // }

    MARKER_END = 211;

    for ( size_t i=0; i<n; i++ ) {
        for ( size_t j=0; j<n; j++ ) {
            printf( "%d ", c[i*n+j] );
        }
        printf( "\n" );
    }

    free(c);
    free(b);
    free(a);
    exit(EXIT_SUCCESS);

}
