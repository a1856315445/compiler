echo $clang -S -emit-llvm sample3.c cat 

echo $sample3.ll

echo

clang -S -emit-llvm sample3.c

cat sample3.ll

echo -------------------------------------------------------------------------

echo $lli sample3.ll

echo

lli sample3.ll

echo 

echo -------------------------------------------------------------------------

echo $opt -S -globalopt -loop-simplify -mem2reg sample3.ll

echo $llc sample3.ll

echo

opt -S -globalopt -loop-simplify -mem2reg sample3.ll

llc sample3.ll

echo -------------------------------------------------------------------------

echo $cat sample3.s

echo

cat sample3.s

echo -------------------------------------------------------------------------

echo $as sample3.s -o sample3.o

as sample3.s -o sample3.o

echo

echo $ld -o sample3 -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o  /usr/lib/x86_64-linux-gnu/crtn.o sample3.o -lc  

ld -o sample3 -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o  /usr/lib/x86_64-linux-gnu/crtn.o sample3.o -lc  

echo
