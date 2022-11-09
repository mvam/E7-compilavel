
%{
   /* validador: a program used to determine whether */
   /* a given program is standards compliant. */

   #include <stdio.h>
   #include <stdlib.h>
   #include "expr.h"
   #define YYSTYPE struct expr *

   struct expr * parser_result = 0;
%}

%token TOKEN_ERROR // declarar os demais tokens
%token TOKEN_INT

%token TOKEN_PLUS
%token TOKEN_MINUS	
%token TOKEN_MULT	
%token TOKEN_DIV	
%token TOKEN_SEMI	
%token TOKEN_OPENP	
%token TOKEN_CLOSEP	

%%

program	: expr TOKEN_SEMI				{ parser_result = $1; }
	;

expr	: expr TOKEN_PLUS term				{ $$ = expr_create(EXPR_ADD,$1,$3); }
	| expr TOKEN_MINUS term				{ $$ = expr_create(EXPR_SUBTRACT,$1,$3); }
	| term						{ $$ = $1; }
	;

term	: term TOKEN_MULT factor			{ $$ = expr_create(EXPR_MULTIPLY,$1,$3); }		
	| term TOKEN_DIV factor				{ $$ = expr_create(EXPR_DIVIDE,$1,$3); }
	| factor 					{ $$ = $1; }
	;

factor	: TOKEN_MINUS factor				{ $$ = expr_create(EXPR_SUBTRACT,0,$2); }
	| TOKEN_OPENP factor TOKEN_CLOSEP		{ $$ = $2; }
	| TOKEN_INT					{ $$ = expr_create_value( atoi(yytext) ); }
	;

%%

