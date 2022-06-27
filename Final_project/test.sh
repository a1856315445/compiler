vim lex.l

vim yacc.y

lex lex.l

yacc -d yacc.y

cc lex.yy.c y.tab.c -o cfp
#------------------------------------------------
wget https://apt.llvm.org/llvm.sh

chmod +x llvm.sh

sudo ./llvm.sh 15 all

clang-15 --version

llc-15 --version
#---------------------------------------
clang-15 -S -emit-llvm Hanoi.c

cat Hanoi.ll

opt-15 -S -globalopt -loop-simplify -mem2reg Hanoi.ll

llc-15 Hanoi.ll

cat Hanoi.s

as Hanoi.s -o Hanoi.o

ld -o Hanoi -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o  /usr/lib/x86_64-linux-gnu/crtn.o Hanoi.o -lc 

./Hanoi
#---------------------------------------
clang-15 -fno-integrated-as Hanoi.c

./a.out

clang-15 -fno-integrated-as Hanoi.ll

./a.out

clang-15 -fno-integrated-as Hanoi.s

./a.out

clang-15 -fno-integrated-as Hanoi.o

./a.out
#-------------------------------------
clang-15 -fuse-ld=ld Hanoi.c

./a.out

clang-15 -fuse-ld=ld Hanoi.ll

./a.out

clang-15 -fuse-ld=ld Hanoi.s

./a.out

clang-15 -fuse-ld=ld Hanoi.o

./a.out
#-----------------------------------
clang-15 -fuse-ld=gold Hanoi.c

./a.out

clang-15 -fuse-ld=gold Hanoi.ll

./a.out

clang-15 -fuse-ld=gold Hanoi.s

./a.out

clang-15 -fuse-ld=gold Hanoi.o

./a.out

#-----------------------------------
clang-15 Hanoi.c -c -o Hanoi.o 

clang-15 -fuse-ld=lld Hanoi.o

./a.out

clang-15 -fuse-ld=lld Hanoi.c

./a.out
-------------------------------------
#https://clang.llvm.org/docs/ClangCommandLineReference.html

#https://clang.llvm.org/docs/Toolchain.html#language-frontends-for-other-languages

