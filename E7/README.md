# E7

Consulte a seção 5.4 do livro do Douglas Thain
e use o Bison para escrever um tradutor para expressões 
aritméticas que gera a árvore sintática abstrata para
expressões corretas e imprime (na saída padrão)
a expressão a partir da AST.

- Crie o arquivo _expression-tree.y_ copiando o arquivo
_interpretador.y_ do exercício E6, 
substituindo as  ações semânticas das regras de produção
para gerar a AST.

A sua resposta deverá estar no arquivo _expression-tree.y_

- Reutilizar o analisador léxico implementado para o exercício E6.i

- Criar os arquivos expr.h e expr.c com o código mostrado na seção 5.4.

- Modificar o arquivo main.c para definir e chamar uma função 
_expr_print_ que percorre a AST criada (in-order) e 
mostra a representação textual da árvore na saída padrão.

Obs: 
- Lembre de usar ```bison --defines=token.h expression-tree.y```
para gerar o arquivo _token.h_.
- A função _expr_print_ do livro possivelmente mostrará mais parênteses do que os usados na expressão lida.



