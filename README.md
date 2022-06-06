# Compiler-final
## system environment:Ubuntu20.04

>change to root user

```sudo su```

>install git package management tool

```apt-get install git```

>

```git clone https://github.com/a896536351/compiler-final.git```
    
```cd compiler-final/Final_project```

```bash lex_yacc.sh```

```bash gcc.sh```

```bash llvm.sh```

>if error like:```ld: cannot find crt1.o: No such file or directory``` or ```ld: cannot find crti.o: No such file or directory```
>
>use ```whereis *file name*``` to find the file path
>
>```gedit gcc.sh```
