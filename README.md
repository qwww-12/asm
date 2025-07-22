# Assembly language

### run assembly code
1- for run and compile code asm need install nasm for compile asm file to object file like this:

        nasm -f elf64 code.asm -o objetc_file.o
       -f for chose format depending on your system
2- now need excutable file we use command ld and ld for extruct excutable file from object file like this:
        ```ld -o excutable_file object_file.o```

3- we get a excute file and run this file like normal way just c language:
        ```./excutable_file```
