%{
   // validador: a program used to determine whether
   // a given program is standards compliant.

   #include <stdio.h>

   void yyerror(const char* msg) {
      fprintf(stderr, "%s\n", msg);
   }

   extern int yylex();
%}

%token TOKEN_ERROR // declarar os demais tokens


%%

program: /* completar */

%%


