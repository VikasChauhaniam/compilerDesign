%{
#include <stdio.h>
int wordCount = 0;
int numCount = 0;
%}

%%
[a-zA-Z]+    { wordCount++; }
[0-9]+      { numCount++; }
.           ; // Ignore any other characters

%%

int main() {
    yylex();
    printf("Words: %d\nNumbers: %d\n", wordCount, numCount);
    return 0;
}

