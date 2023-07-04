#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "../matMul/matMul.h"

unsigned int cost (
    unsigned int matrixCount,
    unsigned int* rowSizes,
    unsigned int* colSizes,
    unsigned int* part
) {
    if ( matrixCount==1 ) { // Base case.
        return 0; // No multplication to be done.
    } else {

        unsigned int numPossibleSplits = matrixCount-1; // Think: if there are two matrices to multiply, there is one way to split.
        // AB: (A)(B)
        // ABC: (A)(BC) and (AB)(C)

        unsigned int costs[numPossibleSplits]; //creates an array of all possible splits and holds their costs
        for ( unsigned int split=0; split<numPossibleSplits; split++ ) {

            unsigned int l = rowSizes[0];
            assert ( colSizes[split] == rowSizes[split+1] ); //Creates diagnostics for the program
            unsigned int m = colSizes[split];   //m is the amount of columns for the current split
            unsigned int n = colSizes[matrixCount-1];   //n is the amount of columns in the last matrix

            costs[split] =
                cost( split+1, rowSizes, colSizes, part ) + // cost of left subchain
                l * m * n + // cost of multiplying the two chains
                cost( matrixCount-split-1, rowSizes+split+1, colSizes+split+1, part ); // cost of right subchain
        }

        unsigned int minCost = costs[0];
        //printf("Cost of split 0: %d\n", costs[0]);
        //printf("numPossibleSplits: %d\n", numPossibleSplits);
        for ( unsigned int split=1; split<numPossibleSplits; split++ ) {
            // printf("Cost of split %d: %d\n", split, costs[split]);
            if ( costs[split]<minCost ) {
                //printf("split: %d\n", split);
                minCost = costs[split];
                *part = split;
            }
        }
        // printf("Split at %d\n", *part);

        return minCost;
    }
}

unsigned int findPart2 ( 
    unsigned int matrixCount,
    unsigned int* rowSizes,
    unsigned int* colSizes,
    unsigned int beg,
    unsigned int end,
    unsigned int** cost2D,
    unsigned int** part
) {
    // printf("beginning: %d, end: %d\n", beg, end);
    if ( matrixCount==1 ) { // Base case.
        cost2D[beg][end] = 0;
        return 0; // No multplication to be done.
    } else {
        // unsigned int partition = beg;
        unsigned int numPossibleSplits = matrixCount-1; // Think: if there are two matrices to multiply, there is one way to split.

        unsigned int costs[numPossibleSplits]; //creates an array of all possible splits and holds their costs
        for ( unsigned int split=beg; split<numPossibleSplits+beg; split++ ) {

            unsigned int l = rowSizes[beg];   //l is the amount of rows in the first matrix
            assert ( colSizes[split] == rowSizes[split+1] ); //Creates diagnostics for the program
            unsigned int m = colSizes[split];   //m is the amount of columns for the current split
            unsigned int n = colSizes[end];   //n is the amount of columns in the last matrix

            costs[split-beg] =
                findPart2( split+1-beg, rowSizes, colSizes, beg, split, cost2D, part ) + // cost of left subchain
                l * m * n + // cost of multiplying the two chains
                findPart2( end-split, rowSizes, colSizes, split+1, end, cost2D, part ); // cost of right subchain
        }

        unsigned int minCost = costs[0];
        for ( unsigned int split=0; split<numPossibleSplits; split++ ) {
            if ( costs[split]<minCost ) {
                minCost = costs[split];
                // partition = split;
                part[beg][end] = split+beg;
            }
        }
        // printf("beginning: %d, end: %d, split: %d\n", beg, end, partition);
        cost2D[beg][end] = minCost;
        return minCost;
    }
}

int** multiply (
    int partition,
    unsigned int beginning,
    unsigned int end,
    unsigned int matrixCount,
    int*** matrices,
    unsigned int* rowSizes,
    unsigned int* colSizes,
    int** product,
    int** temp,
    unsigned int** part,
    unsigned int* counter,
    unsigned int* dimensions,
    int** lMatrix,
    int** rMatrix,
    unsigned int* maxRow,
    unsigned int* maxCol
) {
    // printf("beginning: %d , part: %d, end: %d, matrixCount: %d, partition: %d\n", beginning, partition, end, matrixCount, partition);
    // printf("rowSize: %d, colSize: %d, colSize: %d\n", rowSizes[beginning], colSizes[beginning], colSizes[beginning+1]);
    if(matrixCount == 1) {
        return matrices[beginning];
    } else if(matrixCount == 2) {
        // printf("mult\n");
        // printf("lrowSize: %d, scolSize: %d, rcolSize: %d\n", rowSizes[beginning], colSizes[beginning], colSizes[beginning+1]);

        // temp = realloc(temp, rowSizes[beginning] * sizeof(int*) + rowSizes[beginning] * colSizes[beginning+1] * sizeof(int));
        // temp = malloc( rowSizes[beginning] * sizeof(int*) + rowSizes[beginning] * colSizes[beginning+1] * sizeof(int));
        // temp = realloc(temp, rowSizes[beginning] * sizeof(int*));
        // for(int i = 0; i < rowSizes[beginning]; i++)
        // {
        //     temp[i] = realloc(temp[i], colSizes[beginning+1] * sizeof(int));
        // }
        matMul(rowSizes[beginning], colSizes[beginning], colSizes[beginning+1], matrices[beginning], matrices[beginning+1], temp);
        // int** r = temp;
        // for(int i = 0; i < rowSizes[beginning]; i++)
        // {
        //     free(temp[i]);
        // }
        // free(temp);
        // printf("temp\n dim[beg]: %d, dim[beg+1]: %d\n", dimensions[beginning], dimensions[beginning+1]);
        // for(int i = 0; i < dimensions[beginning]; i++)
        // {
        // for(int j = 0; j < dimensions[beginning+1]; j++)
        // {
        //     printf("%d ", temp[i][j]);
        // }
        // printf("\n");
        // }
        return temp;
    }

    // int amtRight;

    // amtRight = matrixCount-amtLeft;

    // int lMatrix[][], rMatrix[][] = {0};

    // int** lMatrix; 
    // int** rMatrix;
    unsigned int partLR = part[beginning][end];
    int amtLeft = partLR+1;
    
    // printf("amtLeft: %d\n", amtLeft);
    // printf("partLR: %d\n", partLR);
    // *counter = *counter + 1;
    lMatrix = multiply( partLR, partLR+1-amtLeft, end-(matrixCount-amtLeft), amtLeft, matrices, rowSizes, colSizes, product, temp, part, counter, dimensions, lMatrix, rMatrix, maxRow,maxCol);
    rMatrix = multiply( partLR, partLR+1, beginning+matrixCount-1, matrixCount-amtLeft, matrices, rowSizes, colSizes, product, temp, part, counter, dimensions, lMatrix, rMatrix, maxRow, maxCol);
    // printf("beginning: %d, end: %d, dimensions[beginning]: %d, dimensions[beginning+1]: %d, dimensions[end]: %d\n", beginning, end, dimensions[beginning], dimensions[end], dimensions[end+1]);
    // printf("lMatrix\n");
    // for(int i = 0; i < dimensions[beginning]; i++)
    // {
    //     for(int j = 0; j < dimensions[end]; j++)
    //     {
    //         printf("%d ", lMatrix[i][j]);
    //     }
    //     printf("\n");
    // }
    // printf("rMatrix\n");
    // for(int i = 0; i < dimensions[end]; i++)
    // {
    //     for(int j = 0; j < dimensions[end+1]; j++)
    //     {
    //         printf("%d ", rMatrix[i][j]);
    //     }
    //     printf("\n");
    // }

    // printf("return product before mult\n");
    // for(int i = 0; i < dimensions[beginning]; i++)
    // {
    //     for(int j = 0; j < dimensions[end+1]; j++)
    //     {
    //         printf("%d ", product[i][j]);
    //         product[i][j] = 0;
    //     }
    //     printf("\n");
    // }
    int** result = calloc(*maxRow, sizeof(int*));
    for(int i = 0; i < *maxRow; i++)
    {
        result[i] = calloc(*maxCol, sizeof(int));
    }

    matMul( dimensions[partLR], dimensions[partLR+1], dimensions[end+1], lMatrix, rMatrix, result);
    // matMul( *maxRow, *maxCol, *maxCol, lMatrix, rMatrix, product);
    // printf("dimensions[beginning]: %d, dimensions[end]: %d, dimensions[end+1]: %d\n", dimensions[beginning], dimensions[end], dimensions[end+1]);
    // printf("return product after mult\n");
    // for(int i = 0; i < dimensions[beginning]; i++)
    // {
    //     for(int j = 0; j < dimensions[end+1]; j++)
    //     {
    //         printf("%d ", product[i][j]);
    //     }
    //     printf("\n");
    // }
    for(int i = 0; i < *maxRow; i++)
    {
        for(int j = 0; j < *maxCol; j++)
        {
            product[i][j] = result[i][j];
        }
    }
    // product = result;  
    for(int i = 0; i < *maxRow; i++)
    {
        int* currentPtr = result[i];
        // product[i] = currentPtr;
        free(currentPtr);
    } 
    free(result);
    return product;
}

// int** mult (
//     unsigned int i,
//     unsigned int j,
//     unsigned int** part,
//     int*** matrices,
//     int* dimensions
// ) {
// if (i == j) // basis case
//     return matrices[i];
// else {
//     unsigned int k = part[i][j];
//     int** X = malloc(dimensions[i] * sizeof(int*) + dimensions[k] * dimensions[i] * sizeof(int));
//     X = mult(i, k, part, matrices, dimensions); // X = A[i]...A[k]
//     int** Y = malloc(dimensions[k+1] * sizeof(int*) + dimensions[k+1] * dimensions[j] * sizeof(int));
//     Y = mult(k+1, j, part, matrices, dimensions); // Y = A[k+1]...A[j]
//     int** p = malloc(dimensions[i] * sizeof(int*) + dimensions[i] * dimensions[j] * sizeof(int));
//     matMul(dimensions[i], dimensions[i], dimensions[j], X, Y, p); // multiply matrices X and Y
//     return p;
// }
// }

int main(int argc, char* argv[]) {

    unsigned int matrixCount;
    unsigned int* rowSizes;
    unsigned int* colSizes;
    int*** matrices;
    unsigned int maxRows = 1;
    unsigned int maxCols = 1;

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        exit(EXIT_FAILURE);
    }

    if (!fscanf(fp, "%d\n", &matrixCount)) {
        perror("reading the number of matrices failed");
        exit(EXIT_FAILURE);
    }

    rowSizes = calloc( matrixCount, sizeof(int) );
    colSizes = calloc( matrixCount, sizeof(int) );
    matrices = calloc( matrixCount, sizeof(int**) );
    for (unsigned int matIndex=0; matIndex<matrixCount; matIndex++) {

        unsigned int rows, cols;
        if (!fscanf(fp, "%d %d\n", &rows, &cols)) {
            perror("reading the dimensions of matrix failed");
            exit(EXIT_FAILURE);
        }
        rowSizes[matIndex] = rows;
        if(rows > maxRows)
            maxRows = rows;
        colSizes[matIndex] = cols;
        if(cols > maxCols)
            maxCols = cols;

        matrices[matIndex] = calloc( rows, sizeof(int*) );
        for ( unsigned int i=0; i<rows; i++ ) {
            matrices[matIndex][i] = calloc( cols, sizeof(int) );
            for ( unsigned int k=0; k<cols; k++ ) {
                int element;
                if (!fscanf(fp, "%d ", &element)) {
                    perror("reading the element of matrix failed");
                    exit(EXIT_FAILURE);
                }
                matrices[matIndex][i][k] = element;
            }
        }
    }
    unsigned int* partOrder = calloc(matrixCount*2+1, sizeof(unsigned int));
    // unsigned int counter = 0;
    for(int i = 0; i < matrixCount*2+1; i++)
    {
        partOrder[i] = -1;
    }
    
    // unsigned int counter = matrixCount/2;
    unsigned int part2 = 0;
    // unsigned int mul_op_count = cost ( matrixCount, rowSizes, colSizes, &part2 ); //calls cost
    unsigned int counter2 = 0;
    // printf("%d\n", mul_op_count ); //prints the amount of operations
    
  
    // printf("costPart: %d\n", part2);
    unsigned int** cost2D = calloc(matrixCount, sizeof(unsigned int*));
    unsigned int** part = calloc(matrixCount, sizeof(unsigned int*));
    for(int i = 0; i < matrixCount; i++)
    {
        cost2D[i] = calloc(matrixCount, sizeof(unsigned int));
        part[i] = calloc(matrixCount, sizeof(unsigned int));
    }
    findPart2(matrixCount, rowSizes, colSizes, 0, matrixCount-1, cost2D, part); //subtract 1 from matrixCount for 'end' for every matrix added after 2
    
    // for(int i = 0; i < matrixCount; i++)
    // {
    //     for(int j = 0; j < matrixCount; j++)
    //     {
    //         printf("cost2D[%d][%d]: %d\n",i+1,j+1,cost2D[i][j]);
    //     }
    // }
    // for(int i = 0; i < matrixCount; i++)
    // {
    //     for(int j = i; j < matrixCount; j++)
    //     {
    //         printf("part[%d][%d]: %d\n",i+1,j+1,part[i][j]);
    //     }
    // }
    // for(int i = 0; i < matrixCount*2+1; i++)
    // {
    //     printf("partition order: %d\n", partOrder[i]);
    // }

    int** product = calloc(maxRows, sizeof(int*));
    int** temp = calloc(maxRows, sizeof(int*));
    int** lMatrix = calloc(maxRows, sizeof(int*));
    int** rMatrix = calloc(maxRows, sizeof(int*));
    // int** product2 = calloc(maxRows, sizeof(int*));
    // printf("maxRows: %d, maxCols: %d\n", maxRows, maxCols);
    for(int i = 0; i < maxRows; i++)
    {
        temp[i] = calloc(maxCols, sizeof(int));
        product[i] = calloc(maxCols, sizeof(int));
        // product2[i] = calloc(maxCols, sizeof(int));
        lMatrix[i] = calloc(maxCols, sizeof(int));
        rMatrix[i] = calloc(maxCols, sizeof(int));
    }

    unsigned int* dimensions = calloc(matrixCount+1, sizeof(unsigned int));
    dimensions[0] = rowSizes[0];
    // printf("d0 = %d\n", dimensions[0]);
    for(int i = 1; i < matrixCount+1; i++)
    {
        dimensions[i] = colSizes[i-1];
        // printf("d%d = %d\n", i, dimensions[i]);
    }

    int** product2 = multiply(part2, 0, matrixCount-1, matrixCount, matrices, rowSizes, colSizes, product, temp, part, &counter2, dimensions, lMatrix, rMatrix, &maxRows, &maxCols);

    // product = mult(0, matrixCount-1, part, matrices, dimensions);
    // printf("matrix:\n");
    for(int i = 0; i < rowSizes[0]; i++)
    {
        for(int j = 0; j < colSizes[matrixCount-1]; j++)
        {
            printf("%d ", product2[i][j]);
        }
        printf("\n");
    }

    // unsigned int numRowsTemp = (sizeof(*temp) / sizeof(temp[0]));
    // unsigned int numColsTemp = (sizeof(temp[0]) / sizeof(int));

    // for(unsigned int i = 0; i < numRowsTemp; i++) {
    //     free(temp[i]);
    // }
    // free(temp);

    // for(int i = 0; i < lRow; i++)
    // {
    //     free(temp[i]);
    // }
    // free(temp);
    for(int i = 0; i < maxRows; i++)
    {
        free(temp[i]);
        free(product[i]);
        free(lMatrix[i]);
        free(rMatrix[i]);
    }
    free(product);
    free(temp);
    free(lMatrix);
    free(rMatrix);

    for (unsigned int matIndex=0; matIndex<matrixCount; matIndex++) { //Frees each matrix in matrices
        int rows = rowSizes[matIndex];
        for ( unsigned int i=0; i<rows; i++ ) {
            free(matrices[matIndex][i]);
        }
        free(matrices[matIndex]);
    }
    free(matrices);

    free(colSizes);
    free(rowSizes);
    fclose(fp);

    exit(EXIT_SUCCESS);
}
