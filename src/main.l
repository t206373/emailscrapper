
/* Data de submissao:13/04/2020
 * Nome: Tony Tian Rui Li
 * RA:206373
 */

%{
#include <stdio.h>
#include <string.h>
%}

%%

[A-Za-z0-9][A-Za-z0-9\-._]*[A-Za-z0-9][@][A-Za-z0-9][A-Za-z0-9\-._]*[A-Za-z0-9][\.]? {
int tamanho,tamanhoreal,i;
tamanho = strlen(yytext);
tamanhoreal = tamanho-1;
if (yytext[tamanhoreal]=='.'){
	for (i=0; i<tamanhoreal; i++){
		printf("%c",yytext[i]);
	}
	printf("\n");
}
else{
	printf("%s\n",yytext);
}
}

[A-Za-z0-9]+[@][A-Za-z0-9]+ { printf("%s\n",yytext); }

[[:space:]]+ ;
[[:^space:]]+ ;

%%

int main() {
  yylex();
  return 0;
}