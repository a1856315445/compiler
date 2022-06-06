#!/bin/sh
# This file should be sourced

apt-get update
 
apt-get install flex bison git vim -y


echo lex lex.l

echo

lex lex.l

ls

echo -------------------------------------------------------------

echo yacc -d yacc.y

echo

yacc -d yacc.y

ls

echo -------------------------------------------------------------

echo cc lex.yy.c y.tab.c -o cfp

echo

cc lex.yy.c y.tab.c -o cfp

echo

echo -------------------------------------------------------------

ls

echo -------------------------------------------------------------

echo
