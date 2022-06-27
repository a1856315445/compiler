#install clang and llvm
sudo apt-get install clang llvm -y

echo $ clang -S -emit-llvm sample3.c cat 

echo $ sample3.ll

echo
#get llvm IR from sample3.c
clang -S -emit-llvm sample3.c

cat sample3.ll

echo -------------------------------------------------------------------------

echo $ lli sample3.ll

echo
#check if IR is expected
lli sample3.ll

echo 

echo -------------------------------------------------------------------------

echo $ opt -S -globalopt -loop-simplify -mem2reg sample3.ll

echo $ llc sample3.ll

echo
#optimize IR
opt -S -globalopt -loop-simplify -mem2reg sample3.ll
#get assembly from IR
llc sample3.ll

echo -------------------------------------------------------------------------

echo $ cat sample3.s

echo

cat sample3.s

echo -------------------------------------------------------------------------

echo $ as sample3.s -o sample3.o
#get object file from assembly
as sample3.s -o sample3.o

echo

echo $ ld -o sample3 -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o  /usr/lib/x86_64-linux-gnu/crtn.o sample3.o -lc  
#get executable from object file
ld -o sample3 -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o  /usr/lib/x86_64-linux-gnu/crtn.o sample3.o -lc  

echo
