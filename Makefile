final_tut_mul.dmp: tut_mul.elf
	riscv64-unknown-elf-elf2hex --bit-width 32 --input tut_mul.elf --output testshex.txt
	riscv64-unknown-elf-objdump -d tut_mul.elf>final_tut_mul.dmp
tutorial.elf: tutorial_mul.c lscript bootstrap.s
	riscv64-unknown-elf-gcc -O0 -Wall -nostdlib -march=rv32imav -mabi=ilp32 -T lscript bootstrap.s tutorial_mul.c test_mul.s -o tut_mul.elf
clean:
	rm tut_mul.elf final_tut_mul.dmp
