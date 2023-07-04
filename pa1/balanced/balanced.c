#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

// Struct to hold the open and close braces and the pointer to the next element.
struct element {
    // char open; // not needed
    char close;
    struct element* next;
};

// Append the new element to the start of the stack
// This is one potential way to write this function signature
//struct element* push (struct element* stack, char brace) {
void push(struct element** stack, char brace) {
    struct element* newElement = malloc(sizeof(struct element)); 
    newElement->close = brace;
    newElement->next = *stack;
    *stack = newElement;
    return;
}

// Remove element from the top of the stack
char pop ( struct element** stack ) {

    if ((*stack) != NULL) {
        struct element* remove = *stack;
        char popped = remove->close;
        *stack = remove->next;
        free(remove);
        //printf("popped = %c\n", popped);
        return popped;
    } else {
        //printf("didn't pop");
        return '\0';
    }
}

int main(int argc, char* argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    struct element* root = NULL;
    bool balanced = true;

    char buff;
    while ( fscanf(fp, "%c", &buff)==1 ) {
        //printf("%c\n", buff);
        // if(buff == '<') {
        //     push(&root, buff);
        // } else if(buff == '(') {
        //     push(&root, buff);
        // } else if(buff == '[') {
        //     push(&root, buff);
        // } else if(buff == '{') {
        //     push(&root, buff);
        // } else if(buff == '>') {
        //     if(pop( &root ) != '<') {
        //         balanced = false;
        //         break;
        //         //printf("no\n");
        //     }
        // } else if(buff == ')') {
        //     if(pop ( &root ) != '(') {
        //         balanced = false;
        //         break;
        //         //printf("no\n");
        //     }
        // } else if(buff == ']') {
        //     if(pop ( &root ) != '[') {
        //         balanced = false;
        //         break;
        //         //printf("no\n");
        //     }
        // } else if(buff == '}') {
        //     //pop( &root );
        //     if(pop( &root ) != '{') {
        //         balanced = false;
        //         break;
        //         //printf("no\n");
        //     }
        // } else {
        //     printf("Invalid character\n");
        // }
        //printf("%c\n", buff);

        switch(buff) {
            case '<' :
                push(&root, buff);
                break;
            case '(' :
                push(&root, buff);
                break;
            case '[' :
                push(&root, buff);
                break;
            case '{' :
                push(&root, buff);
                break;
            case '>' :
                if(pop(&root) != '<') {
                    balanced = false;
                }
                break;
            case ')' :
                if(pop(&root) != '(') {
                    balanced = false;
                }
                break;
            case ']' :
                if(pop(&root) != '[') {
                    balanced = false;
                }
                break;
            case '}' :
                if(pop(&root) != '{') {
                    balanced = false;
                }
                break;
            default :
                printf("Invalid character\n" );
        }
    }

    printf ( balanced ? "yes" : "no" );
    fclose(fp);
    return 0;
}
