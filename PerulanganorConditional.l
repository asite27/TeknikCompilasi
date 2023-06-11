%{
#include <stdio.h>
%}

%option noyywrap

%%
"for"           { printf("Perulangan\n"); }
"while"         { printf("Perulangan\n"); }
"do"            { printf("Perulangan\n\n"); }
"if"            { printf("Kondisional \n"); }
"else"          { printf("Kondisional\n"); }
"switch"        { printf("Kondisional\n"); }
"case"          { printf("Kondisional\n"); }
[[:alpha:]_][[:alnum:]_]*    { printf("IDENTIFIER\n"); }
[[:digit:]]+    { printf("INTEGER\n"); }
.               { printf("INVALID CHARACTER\n"); }
%%

int main() {
	printf("input string: \n");
	yylex();
	return 0;
}

