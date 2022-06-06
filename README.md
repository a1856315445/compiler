# Compiler-final
## system environment:Ubuntu20.04

>change to root user

```sudo su```

>install git package management tool

```apt-get install git```

>download compiler-final.git

```git clone https://github.com/a896536351/compiler-final.git```

>change directories to compiler-final/Final_project

```cd compiler-final/Final_project```

>execute the installer of lex and yacc

```bash lex_yacc.sh```

>execute the installer of gcc

```bash gcc.sh```

>execute the installer of llvm

```bash llvm.sh```

>if error like:```ld: cannot find crt1.o: No such file or directory``` or ```ld: cannot find crti.o: No such file or directory```
>
>use ```whereis filename``` to find the file path
>
>```gedit gcc.sh``` edit the .sh to find the path of crt1.o/crti.o and replace it
