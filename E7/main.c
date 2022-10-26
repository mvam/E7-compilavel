#include <stdio.h>
#include "expr.h"

extern int yyparse();

// definir função expr_print
void expr_print (struct expr *e) {
	if(!e) return;

	printf("[");
	expr_print(e->left);

	switch (e->kind){
		case EXPR_VALUE: 	printf("%d", e->value); break;
		case EXPR_ADD: 		printf("+"); break;
		case EXPR_SUBTRACT: 	printf("-"); break;
		case EXPR_MULTIPLY: 	printf("*"); break;
		case EXPR_DIVIDE: 	printf("/"); break;
	}

	expr_print(e->right);
	printf("]");
}

int main() {
    if (yyparse()==0)
       expr_print(parser_result); 
       // substituir essa mensagem pela chamada à função expr_print.
    else 
       printf("Parse failed.\n"); 
}
