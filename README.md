# Compiler Sample
## System environment:Ubuntu22.04/20.04/18.04

>Change the privileges to the root user

```sudo su```

>Install git package management tool

```apt-get install git -y```

>Download compiler-final.git

```git clone https://github.com/a1856315445/compiler-final.git```

>Change directories to compiler-final/Final_project

```cd compiler_project/Final_project```

>Execute the installer of lex and yacc

```bash lex_yacc.sh```

>Execute the installer of gcc

```bash gcc.sh```

>Execute the installer of llvm

```bash llvm.sh```

>If error like:```ld: cannot find crt1.o: No such file or directory``` or ```ld: cannot find crti.o: No such file or directory```
>
>Use ```whereis filename``` command to find the file's path . There are 3 files need to find out.
>
>```gedit gcc.sh (and llvm.sh)``` to modify the ld command where you found in ```whereis``` 
