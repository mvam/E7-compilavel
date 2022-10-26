#include <stdio.h>

extern int yyparse();

int main() {
    if (yyparse()==0)
       // printf("Parse successful!\n"); 
       // substituir essa mensagem pelo valor da expressão interpretada.
    else 
       printf("Parse failed.\n"); 
}
