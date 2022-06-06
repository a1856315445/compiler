

apt update -y

apt install build-essential -y

echo

echo $ gcc -S -masm=intel sample3.c -o test

gcc -S -masm=intel sample3.c -o test

echo ---------------------------------------------------------------

echo $ cat test

echo

cat test

echo ---------------------------------------------------------------

echo $ as -o test.o test

echo

as -o test.o test

echo $ ld -o test -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/x86_64-linux-gnu/crtn.o test.o -lc  

ld -o test -dynamic-linker /lib64/ld-linux-x86-64.so.2 /usr/lib/x86_64-linux-gnu/crt1.o /usr/lib/x86_64-linux-gnu/crti.o /usr/lib/x86_64-linux-gnu/crtn.o test.o -lc  

echo

echo $ ls-l

ls -l

echo

