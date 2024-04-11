   .text
   .align 4
   .global test_mul

test_mul: 
            
            addi a0, zero, 120
            addi a1, zero, 336
            addi a2, zero, 990
            addi a3, zero, 156
            mul a0, a1, a0
            mul a2, a3, a2
            mulhu a4, a0, a2
            mul a5, a0, a2
            jr ra