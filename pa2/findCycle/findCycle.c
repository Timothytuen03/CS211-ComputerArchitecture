#include "../graphutils.h"
#include <string.h>
#include <stdlib.h>

// A program to find a cycle in a directed graph

// You may use DFS or BFS as needed
/* ... */

bool dfs(graphNode_t vertex, AdjacencyListNode* adjacencyList, bool* visited, bool* stack, graphNode_t* str, int* stackNum, graphNode_t* end, bool* ended) {   
    if(stack[vertex])
    {
        //printf("%ld ", vertex);
        *end = vertex;
        return true;
    }
    if(visited[vertex])
    {
        return false;
    }

    visited[vertex] = true; //mark current vertex as visited
    stack[vertex] = true;
 
    AdjacencyListNode* neighbor = adjacencyList[vertex].next; //get neighboring nodes

    while(neighbor) { //loop through neighbors
        if(dfs(neighbor->graphNode, adjacencyList, visited, stack, str, stackNum, end, ended))
        {

            // printf("num: %d, vertex: %ld. ", *stackNum, vertex);
            // printf("ended: %d\n", *ended);
            if(!*ended)
            {
                // printf("true & not ended");
                if(*end == vertex)
                {
                    *end = *stackNum;
                    *ended = true;
                }

                str[*stackNum] = vertex;
                *stackNum = *stackNum + 1;

            } 
            
            // *isCyclic = true;
            return true; //recursive call of dfs. Find if the neighbor has a cycle
        }
        // printf("\n");
        neighbor = neighbor->next;

    }

    stack[vertex] = false; //Remove current vertex from stack

    return false; //No cycle was found. Return false
}

int main ( int argc, char* argv[] ) {

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList;
    /* ... */
    size_t graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);

    bool isCyclic = false;
    bool* stack = calloc(graphNodeCount, sizeof(bool));
    bool* visited = calloc(graphNodeCount, sizeof(bool));
    graphNode_t* stackStuff = calloc(graphNodeCount, sizeof(graphNode_t));
    
    int stackInt = 0;
    bool ended = false;
    graphNode_t end = 0;
    for (unsigned source=0; source<graphNodeCount; source++) {
        for (size_t i=0; i<graphNodeCount; i++) {
            stackStuff[i] = -1; 
        }    

        if(dfs(source, adjacencyList, visited, stack, stackStuff, &stackInt, &end, &ended))
        {
            isCyclic = true;
            break;
        }
    }
    if (!isCyclic) {
        printf("DAG\n"); 
    } 
    else {
        for(size_t ptr = stackInt-1; ptr > 0; ptr--)
        {
            printf("%ld ", stackStuff[ptr]);
        }
        printf("%ld\n", stackStuff[0]);
    }

    freeAdjList ( graphNodeCount, adjacencyList );
    free(stackStuff);
    free(visited);
    free(stack);
    return EXIT_SUCCESS;
}
