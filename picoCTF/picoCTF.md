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
>binwalk -e -M dolls.jpg\

This gives an extracted directories. We move into the 4th extracted directory inside which we will find a file containing the flag (flag.txt).
>**picoCTF{ac0072c423ee13bfc0b166af72e25b61}**

## Static aint always noise
Here in this we use string static to view the strings in the file. Through this way we can find the flag.
>>**picoCTF{d15a5m_t34s3r_f6c48608}**
## Tab,Tab,Attack
In this we extract the file given and we use cd to enter the file and then when we click tab we can move through the folders easily and when we run the last file we get the flag.
>> **picoCTF{l3v3l_up!_t4k3_4_r35t!_76266e38}**
## Insp3ct0r
For this in the website that we are guided to, we inspect the website and look at the sources the HTML JS and CSS codes we can find the 1st 2nd and the 3rd part of the password.
>> **picoCTF{tru3_d3t3ct1ve_0r_ju5t_lucky?f10be399}**
## Lets Warm Up
Here we are given a hex number and we have to convert it to ascii. 0x70 is given which is p in ascii. So we submit the flag as
>> **picoCTF{p}**
## vault-door-training
Here we are given a code in java which when we so through the flag is given to us in plain sight In *return password equals*.
>> **picoCTF{w4rm1ng_Up_w1tH_jAv4_be8d9806f18}**
## Warmed up
Here we need to convert the hex to decimal 0x3D=decimal 61
>> **picoCTF{61}**
## The Numbers
Here from the image given we have to convert the number to their corresponding alphabet and the flag is in capitals
>> **PICOCTF{THENUMBERSMASON}**
## 2 Warm
Here we just need to convert the given decimal to binary. We get the flag
>> **picoCTF{101010}**
## Some assembly required
When we inspect the site and go through sources ,wasm and the file inside. When we go through the code we can find the flag.
>> picoCTF{a2843c6ba4157dc1bc052818a6242c3f}
## Speeds and Feeds
Here using the data we retrieve from the nc .We put it in a G code interpreter and the output gives us the flag.
>> **picoCTF{num3r1cal_c0ntr0l_84d2d117}**
## Scavenger Hunt
Here just by inspecting the website we can find the 1st and the 2nd part of the flag, for the 3rd part we heed to stop indexing the website. So for that we replace the /myjs.js with robots.txt We get the 3rd part and for the 4th part It is said that we are in apache server. So we look through .htaccess we get the 4th part. So for the 5th part in the mac's there is a file .DS_Store created the 5th  and the last part was stored in there.
>> **picoCTF{th4ts_4_l0t_0f_pl4c3s_2_lO0k_a69684fd}**
