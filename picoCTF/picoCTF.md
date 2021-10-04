# picoCTF
## Obedient cat
we just use ***cat flag*** to get the output which is the flag in this case\
>**picoCTF{s4nity_v3r1f13d_2aa22101}**
## MOD 26\
Here every character is rotated by 13 places.\
So we use ***echo cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_Ncualgvd} | tr a-zA-Z n-za-mN-ZA-M*** to get the flag\
>**picoCTF{next_time_I'l1_try_2_rounds_of_rot13_Aphnytiq}**
## Python Wrangling
here we are given a python file. When we use python3 to run the file it asks ti use -d or -e. So we give -d and also enter the filename given to be entered as passsword and in the next line we enter
the password.
>python3 ende.py -d flag.txt.en\
Please enter the password: 67c6cc9667c6cc9667c6cc9667C6CC96

>**picoCTF{4p0110_1n_7h3_hOus3_67c6cc96}** 
## Wave a flag
When we go through the file we can find the flag\
>**picoCTF{biscuits_4nd_gr4vy_30e77291}**

## Information
In this when we check in the information in license we get a base64 encoded password we decode this to get the flag
>echo "data" | base64 --decode

we get the flag as
>**picoCTF{the_m3tadata_1s_modified}**
## Nice netcat
Here when we use the nc we get a set of decimal values which when we convert into ASCII characters we get the flag.
>**g00d_k1tty!_n1c3_k1tty!_9b3b7392}**
## Matryoshka Doll
To solve this we use binwalk commmand 
>binwalk -e -M dolls.jpg
This gives an extracted directories. We move into the 4th extracted directory inside which we will find a file containing the flag (flag.txt).
>**picoCTF{ac0072c423ee13bfc0b166af72e25b61}**
