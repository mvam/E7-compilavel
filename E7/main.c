#include <stdio.h>

extern int yyparse();

// definir função expr_print


int main() {
    if (yyparse()==0)
       // printf("Parse successful!\n"); 
       // substituir essa mensagem pela chamada à função expr_print.
    else 
       printf("Parse failed.\n"); 
}
