%option noyywrap
%{
	#include<stdio.h>
	int n=0;
%}
%%	
[+][6][2][0-9]{11} {
	printf("ini adalah format no.hp\n",yytext);
	n++;
	}

[0-9]{2}-[0-9]{2}-[0-9]{4}   {
	printf("Ini adalah format tanggal\n", yytext);
	}

https?:\/\/[a-zA-Z\-\.]*	{
	printf("Ini adalah format URL\n");
	}

[AIUEOaiueo]    printf("Ini hanya menerima huruf vokal \n");
.*    printf("Hasil tidak terdefinisi\n"); 


%%

int main()
{
	printf("Input a string:\n");
	yylex();
	return 0;
}
