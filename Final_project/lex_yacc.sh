#!/bin/sh

apt-get update -y
#install flex(lex) and bison(yacc)
apt-get install flex bison git vim -y

echo -------------------------------------------------------------

echo $ lex lex.l

echo
#get lex.yy.c
lex lex.l

ls

echo -------------------------------------------------------------

echo $ yacc -d yacc.y

echo
#get y.tab.c and y.tab.h
yacc -d yacc.y

ls

echo -------------------------------------------------------------

echo $ cc lex.yy.c y.tab.c -o cfp

echo
#put them together to get executable file
cc lex.yy.c y.tab.c -o cfp

echo -------------------------------------------------------------

ls

echo
