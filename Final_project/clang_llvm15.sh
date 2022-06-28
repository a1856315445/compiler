wget https://apt.llvm.org/llvm.sh

chmod +x llvm.sh

sudo ./llvm.sh 15 all

echo --------------------------------

echo $ clang-15 --version

clang-15 --version

echo --------------------------------

echo $ llc-15 --version

llc-15 --version

echo --------------------------------

echo $ clang-15 -S -emit-llvm Hanoi.c

clang-15 -S -emit-llvm Hanoi.c

cat Hanoi.ll

echo --------------------------------

echo $ opt-15 -S -globalopt -loop-simplify -mem2reg Hanoi.ll

opt-15 -S -globalopt -loop-simplify -mem2reg Hanoi.ll

llc-15 Hanoi.ll

echo --------------------------------

echo $ cat Hanoi.s

cat Hanoi.s

as Hanoi.s -o Hanoi.o

echo --------------------------------

echo $ ld -o Hanoi -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o  /usr/lib/x86_64-linux-gnu/crtn.o Hanoi.o -lc 

ld -o Hanoi -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o  /usr/lib/x86_64-linux-gnu/crtn.o Hanoi.o -lc

./Hanoi
#---------------------------------------
echo --------------------------------

echo $ clang-15 -fno-integrated-as Hanoi.c

clang-15 -fno-integrated-as Hanoi.c

./a.out

echo --------------------------------

echo $ clang-15 -fno-integrated-as Hanoi.ll

clang-15 -fno-integrated-as Hanoi.ll

./a.out

echo --------------------------------

echo $ clang-15 -fno-integrated-as Hanoi.s

clang-15 -fno-integrated-as Hanoi.s

./a.out

echo --------------------------------

echo $ clang-15 -fno-integrated-as Hanoi.o

clang-15 -fno-integrated-as Hanoi.o

./a.out

echo --------------------------------

#------------------------------------
echo $ clang-15 -fuse-ld=ld Hanoi.c

clang-15 -fuse-ld=ld Hanoi.c

./a.out

echo --------------------------------

echo $ clang-15 -fuse-ld=ld Hanoi.ll

clang-15 -fuse-ld=ld Hanoi.ll

./a.out

echo --------------------------------

echo $ clang-15 -fuse-ld=ld Hanoi.s

clang-15 -fuse-ld=ld Hanoi.s

./a.out

echo --------------------------------

echo $ clang-15 -fuse-ld=ld Hanoi.o

clang-15 -fuse-ld=ld Hanoi.o

./a.out

echo --------------------------------

#-----------------------------------

echo $ clang-15 -fuse-ld=gold Hanoi.c

clang-15 -fuse-ld=gold Hanoi.c

./a.out

echo --------------------------------

echo $ clang-15 -fuse-ld=gold Hanoi.ll

clang-15 -fuse-ld=gold Hanoi.ll

./a.out

echo --------------------------------

echo $ clang-15 -fuse-ld=gold Hanoi.s

clang-15 -fuse-ld=gold Hanoi.s

./a.out

echo --------------------------------

echo $ clang-15 -fuse-ld=gold Hanoi.o

clang-15 -fuse-ld=gold Hanoi.o

./a.out

echo --------------------------------
#-----------------------------------

echo $ clang-15 Hanoi.c -c -o Hanoi.o 

echo $ clang-15 -fuse-ld=lld Hanoi.o

clang-15 Hanoi.c -c -o Hanoi.o 

clang-15 -fuse-ld=lld Hanoi.o

./a.out

echo --------------------------------

echo $ clang-15 -fuse-ld=lld Hanoi.c

clang-15 -fuse-ld=lld Hanoi.c

./a.out
