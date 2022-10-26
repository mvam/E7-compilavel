# E6

Consulte a seção 5.3 do livro do Douglas Thain
e use o Bison para escrever um interpretador para expressões 
aritméticas. 

- Crie o arquivo _interpretador.y_ copiando
o arquivo _validador.y_ do exercício E5, 
adicionando  ações semânticas às regras de produção.
A sua resposta deverá estar no arquivo _interpretador.y_

- Reutilizar o analisador léxico implementado para o exercício E5.

- Modificar o arquivo main.c para mostrar em stdout: 

   - o valor de cada expressão correta digitada na linha de comando, 
ou 
   - mensagem de erro em caso de erro léxico/sintático na expressão analisada.

Obs: Lembre de usa ```bison --defines=token.h interpretador.y```
para gerar o arquivo _token.h_.


