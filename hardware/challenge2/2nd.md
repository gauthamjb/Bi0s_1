>## flag{FLAG=EP}

### Challenge1
for lighting up the bulb the output should be 1,as at the end there is an AND gate both the inputs should be 1, 
again considering the upper part it is again an AND gate, and both input to this AND gate
should be 1 to satisfy the conditon. So the wire taken from d should be 1(**d=1**).
Now when we take the lower part(considering from right) it is an OR gate one input should be 1.
when we consider the first input it comes from an and gate,one of its inputs comes from d through NOT gate
so the value is 0 and the and gate gives 0. So the 2nd input to the OR gate should be 1
there are 2 AND gates to this input.hence (**A,NOT B,NOT C =1**) 

| A| B| C| D|
|--|--|--|--|
|1|0|0|1|
>a=(10011110)decimal  
> a=158

### 2nd challenge
1. here A=0 and X=0.
	for X=0 the input to the NAND gate should be 1 and 1,for that to happen the or gate should give output as 1
	and one of the inputs to the and gate be 1,[ So B=1 ]
2. C=1 D=1
	Here in the XOR gate 1,1 gives output 0 and the next XNOR gate inputs are 0 and C=1
	for which the output is 0 and at last there is an OR gate whose inputs are
	 D=1,0(from XNOR) gives output as 1.  [Y=1]
3. here E=1, in the next AND gate E and NOT(E) is taken which is 0 and in the final OR gate 0 and NOT(E)=0 is taken
	and the result for Z=0[ Z=0 ]
	
| A | B | C | D | E| X | Y | Z |
|--|--|--|--|--|--|--|--|
0|1|1|1|1|0|1|0
> b=(11001110)decimal  
> b=206

