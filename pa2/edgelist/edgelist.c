#include "../graphutils.h" // header for functions to load and free adjacencyList

// A program to print the edge list of a graph given the adjacency matrix
int main ( int argc, char* argv[] ) {

    // FIRST, READ THE ADJACENCY MATRIX FILE
    AdjacencyListNode* adjacencyList = NULL;
    /* ... */
    const char* filename = argv[1];
    // FILE* fp = fopen(argv[1], "r");
    // if (!fp) {
    //     perror("fopen failed");
    //     return EXIT_FAILURE;
    // }
    // int numNodes = fgetc(fp);

    // for(int i = 0; i < numNodes; i++)
    // {
    //     adjacencyList
    // }

    size_t numNodes = adjMatrixToList(filename, &adjacencyList);

    // NEXT, TRAVERSE THE ADJACENCY LIST AND PRINT EACH EDGE, REPRESENTED AS A PAIR OF NODES
    // Example of traversing the adjacency list is in the freeAdjList() function in graphutils.h
    /* ... */
    bool visited[numNodes];
    for(size_t curr = 0; curr < numNodes; curr++) {
        AdjacencyListNode* link = adjacencyList[curr].next;
        visited[curr] = true;
        while(link) {
            //AdjacencyListNode* temp = link;
            if(!visited[link->graphNode])
                printf("%ld %ld\n", curr, link->graphNode);
            link = link->next;
            //free(temp);
        }
        //printf("\n");
    }

    // NOW, BE SURE TO FREE THE ADJACENCY LIST
    /* ... */
    freeAdjList(numNodes, adjacencyList);
    //free(visited);

    return EXIT_SUCCESS;
}
