# Compiler-final
$system environment:Ubuntu20.04
	sudo su
$change to root user
apt-get install git
$install git package management tool
git clone https://github.com/a896536351/compiler-final.git
    
cd compiler-final/Final_project

bash lex_yacc.sh

bash gcc.sh

bash llvm.sh

#if error like:"ld: cannot find crt1.o: No such file or directory" or "ld: cannot find crti.o: No such file or directory"
#use "whereis crt1.o" to find the file path
