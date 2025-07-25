# Assembly language

### run assembly code
- [x] for run and compile code asm need install nasm for compile asm file to object file like this:

-        nasm -f elf64 code.asm -o objetc_file.o
-        -f for chose format depending on your system
- [x] now need excutable file we use command ld and ld for extruct excutable file from object file like this:

-        ld -o excutable_file object_file.o

- [x] we get a excute file and run this file like normal way just c language:

-        ./excutable_file

### version assembly

if your device 32 bit use asm86 beacuse registers of the 32 bit is eax,ebx,e..

if your device 64 bit use asm86_64 because has a registers of the 64 bit but you can use asm86 without any probleme

-         eax= 0xFFFFFFFF 32-bit value (max unsigned)
-         rax, 0xFFFFFFFFFFFFFFFF 64-bit value (max unsigned)
-         mov eax, 0x01
          |
          |--> eax= 0x00000001
          |--> rax= 0x0000000000000001
for know n for bit of your device use this command

          uname -m
