<p align='center'>
    <img src="extras/images/Parse_Tree_Derivations.svg" width="500" >
</p>

<p align="center">
    <img src="https://img.shields.io/github/languages/count/melchisedech333/lex-yacc-experiments?style=for-the-badge" >
    <img src="https://img.shields.io/github/repo-size/melchisedech333/lex-yacc-experiments?style=for-the-badge" >
</p>

<br>

Language: <a href="readme.md">EN-US</a>

Aqui estão meus códigos, estudos e experimentos em geral, que realizei usando as ferramentas para análise de gramática livre de contexto. As ferramentas que utilizei são <b>lex</b>, <b>yacc</b> e <b>bison</b>.

**Se algum código foi útil para você, considere [ser um patrocinador](https://github.com/sponsors/melchisedech333) :blue_heart:** 

<br>

:bookmark_tabs: Sumário
-----
* [Instruções](#hammer_and_wrench-instruções)
* [Autor](#smiley-autor)
* [Licença](#scroll-licença)
-----

<br>

:hammer_and_wrench: Instruções
---

Each directory is equivalent to a specific test. And to compile run the file <b>compile-and-run.sh</b> passing the directory name as a parameter.

```bash
./compile-and-run.sh "2 - filter tokens"
```

After compiling, just run the generated file with the name <b>parsing</b>, and type the input.

```bash
./parsing
```

For this example in question (using the <b>2 - filter tokens</b>), a valid input could be:

```
10 20 30 A
```

For this input, the output will be:

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

It is important to mention that within each directory there is a file called <b>input.txt</b>, which contain one (or more) possible example entries.

<br>

:smiley: Autor
---

Patrocinar: [melchisedech333](https://github.com/sponsors/melchisedech333)<br>
YouTube: [Melchisedech](https://www.youtube.com/channel/UC4Sh4wxncr5arnydpUfWPKw)<br>
Twitter: [Melchisedech333](https://twitter.com/Melchisedech333)<br>
Blog: [melchisedech333.github.io](https://melchisedech333.github.io/)<br>
LinkedIn: [Melchisedech Rex](https://www.linkedin.com/in/melchisedech-rex-724152235/)

<img src="https://github.com/melchisedech333.png?size=200" height="100" />

<br>

:scroll: Licença
---

[ BSD-3-Clause license](./license)


