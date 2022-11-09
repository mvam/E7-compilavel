/* 
 * Copiar o código de validador.l (exercício E5) para cá.
 */

%option noyywrap yylineno

%{
#include "token.h" 
%}

%%

[0-9]+	{ return TOKEN_INT;  }
"+" 	{ return TOKEN_PLUS;  }
"-" 	{ return TOKEN_MINUS;  }
"*" 	{ return TOKEN_MULT;  }
"/" 	{ return TOKEN_DIV; }
"(" 	{ return TOKEN_OPENP; }
")" 	{ return TOKEN_CLOSEP; }
";"     { return TOKEN_SEMI; }	
. 	{ return TOKEN_ERROR; }

%%


