#include <stdlib.h>
#include <stdio.h>
#include <string.h>

size_t min ( size_t x, size_t y ) {
    return x<y ? x : y;
}

// size_t levenshtein_recursive ( char* source, char* target ) {

//     // printf( "source=%s\n", source );
//     // printf( "target=%s\n", target );

//     if (strlen(source)==0) return strlen(target);
//     else if (strlen(target)==0) return strlen(source);
//     else if (source[0]==target[0]) return levenshtein_recursive (source+1, target+1);
//     else {
//         size_t ins = levenshtein_recursive (source+1, target  );
//         size_t del = levenshtein_recursive (source,   target+1);
//         size_t sub = levenshtein_recursive (source+1, target+1);
//         return 1 + min( min(ins,del), sub );
//     }

// }

size_t levenshtein (char* s1, char* s2)
{
    int len1 = strlen(s1);
    int len2 = strlen(s2);
    int longest;
    // char st1[len1];
    // strcpy(st1, s1);
    // char st2[len2];
    // strcpy(st2, s2);

    if(len2 > len1) 
    {
        longest = len2;
    }
    else {
        longest = len1;
    }
    
    int array[longest+1][longest+1];

    for(int i = 0; i <= len1; i++) {
        array[0][i] = i;
        //printf("%d\n", array[0][i]);
    }
    for(int j = 0; j <= len2; j++) {
        array[j][0] = j;
        //printf("%d\n", array[j][0]);
    }

    //printf("%d\n", len1);

    for(int x = 1; x <= len1; x++) {
        for(int y = 1; y <= len2; y++) {
            if(s1[x-1] == s2[y-1]) {
                array[x][y] = array[x-1][y-1];
            } else {
                //printf("%d , %d\n", x, y);
                int m = min(min(array[x][y-1], array[x-1][y]), array[x-1][y-1]);
                array[x][y] = m+1;
            }
        }
    }
    return array[len1][len2];
}

int main(int argc, char* argv[])
{

    FILE* inputFile = fopen(argv[1], "r");
    if (!inputFile) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    char source[32];
    char target[32];

    fscanf (inputFile, "%s\n%s", source, target);

    printf("%ld\n", levenshtein ( source, target ));

    return EXIT_SUCCESS;

}
