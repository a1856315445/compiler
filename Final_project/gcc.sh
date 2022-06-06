
apt update -y

apt install build-essential -y

gcc -S -masm=intel sample3.c -o test

as -o test.o test


ld -o test -dynamic-linker /lib64/ld-linux-x86-64.so.2 /lib/x86_64-linux-gnu/crt1.o /lib/x86_64-linux-gnu/crti.o  test.o -lc  /lib/x86_64-linux-gnu/crtn.o

ls -l

