clang -S -emit-llvm sample3.c

cat sample3.ll

lli sample3.ll

opt -S -globalopt -loop-simplify -mem2reg sample3.ll

llc sample3.ll

cat sample3.s

as sample3.s -o sample3.o

ld -o sample3 -dynamic-linker /lib64/ld-linux-x86-64.so.2 /lib/x86_64-linux-gnu/crt1.o /lib/x86_64-linux-gnu/crti.o  sample3.o -lc  /lib/x86_64-linux-gnu/crtn.o

