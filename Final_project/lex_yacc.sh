#!/bin/sh
# This file should be sourced

apt-get update -y
 
apt-get install flex bison git vim -y

echo -------------------------------------------------------------

echo $ lex lex.l

echo

lex lex.l

ls

echo -------------------------------------------------------------

echo $ yacc -d yacc.y

echo

yacc -d yacc.y

ls

echo -------------------------------------------------------------

echo $ cc lex.yy.c y.tab.c -o cfp

echo

cc lex.yy.c y.tab.c -o cfp

echo -------------------------------------------------------------

ls

echo -------------------------------------------------------------
