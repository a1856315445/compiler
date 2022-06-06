#!/bin/sh
# This file should be sourced

# Get the latest package lists
apt-get update
 
# Install from Repo
apt-get install flex bison git vim -y


lex lex.l
echo
ls
echo
yacc -d yacc.y
echo
ls
echo
cc lex.yy.c y.tab.c -o cfp
echo
ls
echo
# Final message
echo All application have been installed, the script will now quit.
 
# Exit the script
#exit 0
