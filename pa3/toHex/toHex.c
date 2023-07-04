#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return 0;
    }

    // first, read the number
    signed int input;
    fscanf(fp, "%d", &input);
    // char binary[32];
    // size_t inc = 0;
    // signed int decimal = input;

    // print bits; you will see this kind of for loop often in this assignment
    // for ( int bit=sizeof(signed int)*8-1; 0<=bit; bit-- ) {
    //     size_t bit_val = ((1<<1)-1) & input>>bit*1; // shift and mask
    //     char character = bit_val ? '1' : '0';
    //     binary[inc] = character;
    //     // printf("%c",character);
    // }


    for ( int hex=3; 0<=hex; hex-- ) {
        signed int hex_val = (15) & input>>hex*4; // shift and mask
        // char character = hex_val ? '1' : '0';
        printf("%X",hex_val);
    }

    // 
    // printf("\n");

    // printf("%X", input);

    // printf("\n");
    // int c = decimal;
    // size_t dig = 1;
    // if(c > 0) {
    //     while(c > 9) {
    //         dig++;
    //         c = c / 10;
    //     }
    // } else {
    //     while(c < -9) {
    //         dig++;
    //         c = c / 10;
    //     }
    // }
    // // printf("digits: %ld\n", dig);

    // int rem;
    // char nums[dig];
    // int index = 0;
    // while(decimal != 0)
    // {
    //     rem = decimal % 16;
    //     if(rem < 10)
    //     {
    //         rem = rem + 48;
    //     } else {
    //         rem = rem + 55;
    //     }
    //     decimal = decimal / 16;
    //     nums[index] = rem;
    //     index = index + 1;
    // }
    // // if(dig < 4) {
    // //     for(int i = 0; i < 4-dig; i++)
    // //     {
    // //         printf("0");
    // //     }
    // // }

    // for(int i = dig-1; i >=0; i--)
    // {
    //     printf("%c", nums[i]);
    // }

    printf("\n");
    return EXIT_SUCCESS;

}
