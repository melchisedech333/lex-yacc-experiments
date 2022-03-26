rm -rf code lex.yy.c y.tab.*
bison -dy code.y
lex code.l
gcc -o code lex.yy.c y.tab.c
./code
