# Microcorruption
## New Orleans
To solve this challenge we block check_password and slowly step through the lines. In the 4th line a comparison is done . So it is comparing with  0x2400. When we go through the memory dump we find ***;x$t>gq*** which is the password. we type solve and enter the password . 
## Sydney
To solve this challenge we block check_password and slowly step through the lines. We can see that in the lines there are several compare commands . We use these hex values in each of the cmp lines and submit the hex codes separated by a space as the password. 
##Hanoi
To solve this. In the lines under <login> we can see a cmp command which compares 0x5 with the value in 2410. this is also close to the place where the passsword is stored(2400). So we enter 16 hex digits along with 05 as the password. password -2121212121212121212121212121212105 Just the last hex has to be 05 rest can be anything.
##Cusco
To solve this we need to push the unlock door function. So when we input a 16 letter password we see that it is stored. The stack pointer goes after the password so we use stack overflow. We input 17 random alphabets in hex and 4644 in the end of it to open the door. we solve by inputting the passsword 212121212121212121212121212121214644. To open the door and hence solving the level.
##Reykjavik
To solve this i disassembled the memory dump from 2400 till before 3241. When we do that we can see that there is a cmp command comparing r4 with 0x1db.So as r4 contains the start of the password buffer. So we enter the password as db01 hex to solve the level and hence solving the level .