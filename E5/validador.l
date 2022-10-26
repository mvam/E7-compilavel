/* 
 * Template para programa flex.
 * Definir tokens no arquivo .y e usar aqui.
 */

%option noyywrap yylineno

%{
#include "token.h" 
%}

%%

[0-9]+	{ /* return TOKEN_INT; */ }
"+" 	{ /* return TOKEN_PLUS; */ }
"-" 	{ /* return TOKEN_MINUS; */ }
"*" 	{ /* return TOKEN_MUL; */ }
"/" 	{ /* return TOKEN_DIV;  */ }
"(" 	{ /* return TOKEN_OPENP; */ }
")" 	{ /* return TOKEN_OPENP; */ }
";"     { /* return TOKEN_SEMI;  */}	
. 	{ return TOKEN_ERROR; }

%%


