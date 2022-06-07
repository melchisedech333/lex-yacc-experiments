<p align='center'>
    <img src="extras/images/Parse_Tree_Derivations.svg" width="500" >
</p>

<p align="center">
    <img src="https://img.shields.io/github/languages/count/melchisedech333/lex-yacc-experiments?style=for-the-badge" >
    <img src="https://img.shields.io/github/repo-size/melchisedech333/lex-yacc-experiments?style=for-the-badge" >
</p>

<br>

Aqui estão meus códigos, estudos e experimentos em geral, que realizei utilizando as ferramentas para análise de gramática livre de contexto. São elas o <b>lex</b>, <b>yacc</b> e <b>bison</b>.

Cada diretório equivale a um teste em específico. E para compilar o mesmo, basta executar o arquivo <b>compile-and-run.sh</b> passando o nome do diretório como parâmetro.

```bash
./compile-and-run.sh "2 - filtrando tokens"
```

Após compilar, basta executar o arquivo gerado com o nome <b>parsing</b>, e digitar a entrada.

```bash
./parsing
```

Para este exemplo em questão (utilizando o <b>"2 - filtrando tokens"</b>), uma entrada válida pode ser:

```
10 20 30 A
```

Para esta entrada a saída será:

```
type: INTEGER
token: 10

type: INTEGER
token: 20

type: INTEGER
token: 30

type: UNKNOWN
token: A
```

Importante citar que dentro de cada diretório há um arquivo chamado <b>input.txt</b>, que contêm uma (ou mais) entrada de exemplo possível.


