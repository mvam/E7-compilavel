# E5

a) Consulte o capítulo 5 do livro do Douglas Thain
e use o Bison para escrever um "validador" para expressões com base na
gramática a seguir; usar o arquivo _validador.y_ 
para colocar a sua resposta.

```
1. program -> expr ';'
2. expr -> expr '+' term
3. expr -> expr '-' term
4. expr -> term     
5. term -> term '*' factor
6. term -> term '/' factor
7. term -> factor
8. factor -> '-' factor
9. factor -> '(' expr ')'
10.factor -> INT
```

Obs: Usar ```bison --defines=token.h validador.y```
para gerar o arquivo _token.h_.

b) Consulte o capítulo 4 do livro do Douglas Thain e
a gramática G11 e escreva um programa Bison para G11 (_g11.y_).
Gere com o Bison o autômato LALR com base na gramática G11
(_g11.output_).

```
G11:

1. S -> V = E
2. S -> id
3. V -> id
4. V -> id [ E ]
5. E -> V
```

Obs: Usar ```bison -dv g11.y```

c) Há diferenças entre saída g11.output com a versão do autômato LALR
desenhada por você no exercício E4 - LR e LALR. Comente.





