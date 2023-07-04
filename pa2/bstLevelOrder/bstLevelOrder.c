#include <stdlib.h>
#include <stdio.h>
#include "../bstReverseOrder/bst.h"
#include "../queue/queue.h"

// A program to perform a LEVEL ORDER (BREADTH-FIRST) TRAVERSAL of a binary search tree

int main ( int argc, char* argv[] ) {

    // READ INPUT FILE TO CREATE BINARY SEARCH TREE
    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    BSTNode* root = NULL;
    int key;
    while ( fscanf(fp, "%d", &key)!=EOF ) {
        root = insert (root, key);
    }
    fclose(fp);

    // USE A QUEUE TO PERFORM LEVEL ORDER TRAVERSAL
    Queue queue = { .front=NULL, .back=NULL };
    
    BSTNode* ptrNode = root;
    while(ptrNode!=NULL)
    {
        printf(" %d ", ptrNode->key);

        if(ptrNode->l_child != NULL)
        {
            enqueue(&queue, ptrNode->l_child);
        }
        if(ptrNode->r_child != NULL)
        {
            enqueue(&queue, ptrNode->r_child);
        }

        ptrNode = dequeue(&queue);
    }

    delete_bst(root);
    return EXIT_SUCCESS;
}
