# Compiler-final
## System environment:Ubuntu22.04/20.04/18.04

>change the privileges to the root user

```sudo su```

>install git package management tool

```apt-get install git -y```

>download compiler-final.git

```git clone https://github.com/a1856315445/compiler-final.git```

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
>```gedit gcc.sh (and llvm.sh)``` to modify the ld command where you found in ```whereis```
