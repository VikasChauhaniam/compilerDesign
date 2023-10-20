%{
#include <stdio.h>
%}

%option noyywrap

%%
int                     { printf("Keyword: %s\n", yytext); }
if|else|while|for       { printf("Keyword: %s\n", yytext); }
[_a-zA-Z][_a-zA-Z0-9]*  { printf("Identifier: %s\n", yytext); }
[0-9]+                  { printf("Number: %s\n", yytext); }
[+\-*/=]                { printf("Operator: %s\n", yytext); }
.                       { printf("Error: Unrecognized character: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

