#include "../graphutils.h" // header for functions to load and free adjacencyList
#include "../queue/queue.h" // header for queue

// A program to solve a maze that may contain cycles using BFS

int main ( int argc, char* argv[] ) {

    // First, read the query file to get the source and target nodes in the maze
    /* ... */
    FILE* fp = fopen(argv[2], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    char buf[256];
    char* sourceChar = fgets(buf, 256, fp);
    size_t source = atoi(sourceChar);
    char* targetChar = fgets(buf, 256, fp);
    size_t target = atoi(targetChar);
    fclose(fp);

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList = NULL;
    /* ... */
    size_t graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);

    // USE A QUEUE TO PERFORM BFS
    Queue queue = { .front=NULL, .back=NULL };

    // An array that keeps track of who is the parent node of each graph node we visit
    graphNode_t* parents = calloc( graphNodeCount, sizeof(graphNode_t) );
    for (size_t i=0; i<graphNodeCount; i++) {
        parents[i] = -1; // -1 indicates that a nodes is not yet visited
    }

    /* ... */
    graphNode_t current = source;
    parents[source] = source;

    while ( current != target ) {

        // so long as we haven't found the target node yet, iterate through the adjacency list
        // add each neighbor that has not been visited yet (has no parents) to the queue of nodes to visit
        /* ... */
        AdjacencyListNode* neighbor = adjacencyList[current].next;
        while(neighbor)
        {
            if(parents[neighbor->graphNode] == -1)
            {
                enqueue(&queue, &neighbor->graphNode);
                parents[neighbor->graphNode] = current;
            }
            neighbor = neighbor->next;
        }

        // Visit the next node at the front of the queue of nodes to visit
        /* ... */
        size_t* nextLoc = (size_t*)dequeue(&queue);
        current = *nextLoc;
    }

    // Now that we've found the target graph node, use the parent array to print maze solution
    // Print the sequence of edges that takes us from the source to the target node
    /* ... */
    size_t i = target;
    while(i != source)
    {
        printf("%ld %ld\n", parents[i], i);
        i = parents[i];
    }

    // free any queued graph nodes that we never visited because we already solved the maze
    while ( queue.front ) {
        dequeue(&queue);
    }
    free (parents);
    freeAdjList ( graphNodeCount, adjacencyList );

    return EXIT_SUCCESS;
}
