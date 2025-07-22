# Assembly language

### run assembly code
for run and compile code asm need install nasm for compile asm file to object file like this:


        ```nasm -f elf64 file.asm -o file.o```

              -f for chose format depending on your system
now need excutable file we use command ld and ld for extruct excutable file from object file like this:
        ```ld -o file file.o```
./file for run this file that have a code asm 
