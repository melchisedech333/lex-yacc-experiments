<p align='center'>
    <img src="extras/images/Parse_Tree_Derivations.svg" width="500" >
</p>

<p align="center">
    <img src="https://img.shields.io/github/languages/count/melchisedech333/lex-yacc-experiments?style=for-the-badge" >
    <img src="https://img.shields.io/github/repo-size/melchisedech333/lex-yacc-experiments?style=for-the-badge" >
</p>

<br>

Here are my codes, studies and experiments in general, which I performed using the tools for context-free grammar analysis. They are <b>lex</b>, <b>yacc</b> and <b>bison</b>.

<br>

:bookmark_tabs: Table of Contents
-----
* [Instructions](#hammer_and_wrench-instructions)
* [Author](#smiley-author)
* [License](#scroll-license)
-----

<br>

:hammer_and_wrench: Instructions
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

:smiley: Author
---

YouTube: [Melchisedech](https://www.youtube.com/channel/UC4Sh4wxncr5arnydpUfWPKw)<br>
Twitter: [Melchisedech333](https://twitter.com/Melchisedech333)<br>
Blog: [melchisedech333.github.io](https://melchisedech333.github.io/)<br>
LinkedIn: [Melchisedech Rex](https://www.linkedin.com/in/melchisedech-rex-724152235/)

<img src="https://github.com/melchisedech333.png?size=200" height="100" />

<br>

:scroll: License
---

[ BSD-3-Clause license](./LICENSE.txt)


