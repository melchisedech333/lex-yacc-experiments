echo "Compile: $1"
rm -rf parsing y.tab.c y.tab.h lex.yy.c
bison -dy "$1/code.y"
mv y.tab.c "$1/y.tab.c"
mv y.tab.h "$1/y.tab.h"
lex "$1/code.l"
mv lex.yy.c "$1/lex.yy.c"
gcc -o parsing "$1/lex.yy.c" "$1/y.tab.c"


