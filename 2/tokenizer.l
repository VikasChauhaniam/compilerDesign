%{
#include <stdio.h>
%}

%option noyywrap

%%

int|float|char|short|long|signed|unsigned|void|volatile                     { printf("Keyword: %s\n", yytext); }
if|else|while|for|auto|const|double|break|continue|case|default|enum|goto|do|extern|return  { printf("Keyword: %s\n", yytext); }
register|sizeof|static|struct|switch|typedef|union    { printf("Keyword: %s\n", yytext); }
[_a-zA-Z][_a-zA-Z0-9]*  { printf("Identifier: %s\n", yytext); }
[0-9]+                  { printf("Number: %s\n", yytext); }
[+\-*/=]                { printf("Operator: %s\n", yytext); }
.                       ; // Ignore any other characters

%%

int main() {
    yylex();
    return 0;
}

