E# Bandit : Over the wire
## level 0
for level 0 we use a ssh client to login into bandit server. using the command
>ssh bandit0@bandit.labs.overthewire.org -p 2220

now we type the password for level 0 i.e **bandit0** and we are able to connect to the server
## level 0-1
Here we check the files in the server using the command **ls** and we find a readable file named readme then we use the command **cat** to display the file
>ls\
> cat readme

>password: ***boJ9jbbUNNfktd78OOpsqOltutMc3MY1***
## level 1-2
we login to the next level using the same ssh client but with a slight alteration in the bandit number and we use the password obtained from the previous task.
here we have a dashed filename so it cannot be accessed using cat -. hence here we use cat ./- and we obtain the password
>ls\
> cat ./-

>password: ***CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9***
## level 2-3
we login to bandit level2. 
Here there are spaces in the file name so we have to put the filename in quotations while using cat
>ls\
>cat 'spaces in this filename'

>password: ***UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK***
## level 3-4
Here the file is hidden in a directory named inhere
so we go into the inhere directory and we use the find command and we find the hidden file ./.hidden and then we display the file
>cd inhere\
> find\
> cat ./.hidden

>password: ***pIwrPrtPN36QITSp3EQaw936yaFoFgAB***
## level 4-5
Here we need to find the only human readable file in the inhere directory. So we move to the inhere directory and when we check there are many files labelled file00 etc.
We need to find the human readable one from them so we use a file -- * command. In this file command -- is used for not including the '-' as an option for the command file and * is short to go through all the file names
.We get the end result only file07 in ASCII form.
>cd inhere\
> ls\
> file -- *\
> cat ./-file07

>password: ***koReBOKuIDDepwhWk7jZC0RTdopnAYKh*** 
## level 5-6
Here we have to find a human readable file of 1033 bytes and also is non executable. So we go into the inhere directory and use find command along with the size option set to 1033c
We only get a single file from this we open this to get the password
>cd inhere\
> find -size 1033c\
> cat ./maybehere07/.file2

>password: ***DXjZPULLxYr17uwoI01bNLQbtFemEgo7*** 
## level 6-7
here we have to find the file that has the following properties
- owned by user bandit7
- owned by group bandit6
- 33 bytes in size\

so we use the find command with the size given as 33c user as bandit7 and group as bandit 6 and we get the only location of a file and we use cat to open the file
>find / -user bandit7 -group bandit6 -size 33c\
> cat /var/lib/dpkg/info/bandit7.password

>password: ***HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs*** 
## level 7-8
Here the password is in the file data.txt near to the word millionth
so we use the command grep to find the word near to millionth
>grep millionth data.txt

>password: ***cvX2JJa4CFALtqS87jk27qwqGhBM9plV*** 
## level 8-9
Here we have to find the unique text from the file. so here we use a command uniq -u along with the sort command  to sort the texts properly and find the unique element aming them
>sort data.txt | uniq -u

>password: ***UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR*** 
## level 9-10
Here the password is stored in file data.txt preceded by several = characters and is one of the few readable ones.
so we use a string command along with grep =. so it prints all the strings preceded by =, from the given output we can point out the password easily
>strings data.txt |grep =

>password: ***truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk*** 
## level 10-11
Here the password is encoded by base64 so we need to decode it. we do it using base64 -d file.
>base64 -d data.txt

>password: ***IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR*** 
## level 11-12
Here the alphabets are rotated by 13 positions. To find the password we have to shift all the alphabets by 13 positions\
**a-z to (n-z-a-m)** and **A-Z to (N-Z-A-M)**\
here we use a tr command to translate a-z from n-z-a-m and likewise the captials too and we print the resultant i.e the password.
>cat data.txt | tr a-zA-Z n-za-mN-ZA-M

>password: ***5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu*** 
## level 12-13
Here we have a hex dump of a file that has been repeatedly compressed.
To solve this we first create a temporary directory and copy the hex dump file to it.Now we reverse the hexdump usimg xxd -r and we repeatdly decompress the file by changing the directory extension and decompressing and atlast we get a gzip file which when decompressed gives an ascii text which is our password.
>mkdir /tmp/city\
> cd ..\
> cd ..\
> cd /tmp/city\
> xxd -r data.txt data.out\
> file data.out\
> ***gzip compressed data***\
> mv data.out data.gz\
> gzip -d data.gz\
> file data\
> ***bzip compressed data***\
> bzip2 -d data\
> file data.out\
> ***gzip compressed data***\
> mv data.out data.gz\
> gzip -d data.gz\
> file data\
> ***tar archive***\
> tar -xf data\
> file data5.bin\
> ***tar archive***\
> tar -xf data5.bin\
> tar -xf data6.bin\
> file data8.bin\
> ***gzip compressed data***\
> mv data8.bin data9.gz\
> gzip -d data9.gz
> file data9
> ***ASCII text***\
> cat data9\
> ***the password is 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL***\

ls command was used when necessary
>password: ***8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL***
## level 13-14
Here the password can only be read by user bandit14. So we need to connect to the user bandit 14, we do this thorough ssh localhost and the sshkey given
>ssh bandit14@localhost -i sshkey.private\
> cat /etc/bandit_pass/bandit14

>password: ***4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e***
## level 14-15
here we need to pass the bandit14 passwod into the port30000 on localhost. So we use the nc command to get the password from the port 30000 localhost
> nc localhost 30000

>password: ***BfMYroe26WYalil77FoDi9qh59eK5xNr***
## level 15-16
here we need to connect to port 30001 in localhost using ssl encryption so we use openssl with s_client inorder to retrieve the password
> openssl s_client -connect localhost:30001 -ign_eof\
> BfMYroe26WYalil77FoDi9qh59eK5xNr

>password: ***cluFn7wTiGryunymYOu4RcffSxQluehd***
## level 16-17
Here the credentials for the next level can be retrieved from a port which is in the range 31000-32000. when we use nmap we can find the ports that are open. Then we use openssl and s_client and try it on the different ports and the only reply we get is when we use the port 31790. we get a private key.
>nmap -p 31000-32000 localhost\
> openssl s_client -connect localhost:31790 -ign_eof

>password: we get as a private key.
## level 17-18
Here we use the RSA key obtained from the previous level and save it in a file and then we use chmod 400 to convert the permissions to read only then we use this as done in the level 13-14 using ssh along with -i inorder to use the key.\
In the latter part we use a command diff to find the line that is changed. Here we get 2 text and we can use trial and error to remove the wrong one.
>ssh bandit17@bandit.labs.overthewire.org -p 2220 -i abc.key\
> diff passswords.new passwords.old

>password: ***kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd***\
>2:            *w0Ydolrc5bwjS4qw5mq1nnQi6mF03bii*
## level 18-19
Here the server logs us out whenever we try to login.so we use cat along with ssh entry to recieve the password
>ssh bandit18@bandit.labs.overthewie.org "cat ./readme"

>password: ***IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x***\
## level 19-20
The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.
When we check the files we find that the file bandit20-do is owned by the user bandit 20.
So we run the command as bandit20
>./bandit20-do /etc/bandit_pass/bandit20

>password: ***GbKksEFF4yrVs6il55v6gwY5aVje5f0j***
## level 21-22
To obtain the password for this level we move to **/etc/cron.d** then we check the files there using ls and we use cat to open the bandit 22 password. we get a reply as reboot along with the file with the directory we run the same using cat and we obtain another fille location which when we open using the same we obtain the password for the next level
>cd /etc/cron.d\
> ls\
> cat cronjob_bandit22\
> cat /usr/bin/cronjob_bandit22.sh\
> cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

>password: ***Yk7owGACWjwMVRwrTesJEwB7WVOLILLI***
## level 22-23
Inorder to get the passswod for this level we repeat the same steps done in the previous level, but we change the name to bandit23 and all the "$mytarget" to bandit23 we get the file which contains the password for the next level we run this file in the tmp folder to get the password
>cd /etc/cron.d\
> ls\
> cat cronjob_bandit23\
> cat /usr/bin/cronjob_bandit23.sh\
> echo I am user bandit23 | md5sum | cut -d ' ' -f 1\
> cat /tmp/8ca319486bfbbc3663ea0fbe81326349

>password: ***jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n***
## level 24-25
inorder to obtain the password for this level we need to find a secretive 4 digit pin code which we need to send to port 30002.
For this we create a txt file to store values from 0000 to 9999. to do this we type a code to input no in the range. We send the password along with the pin and we output the password for the next level.
> mkdir /tmp/abc\
> cd /tmp/abc\
> nano abcd.sh\
>  "#!/bin/bash"\
> for i in {0000..9999}\
> do \
>	echo "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $i"\
> done\
> chmod 700 abc.sh
> touch abcd\
> ./abc.sh > abc.txt\
> nc localhost 30002 < abc.txt

> password: ***uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG***
## level 25-26
Here when we try to get the password using the private key we are logged out. So when we check the file more command is executed. To enable more we need to minimize the cmd teriminal and we execute the last 2 statements to get our password. 
>cat /etc/passwd | grep bandit26\
> cat /usr/bin/showtext\
> we reduce the size of the teriminal window\
> ssh -i bandit26.sshkey bandit26@localhost\
> enter visual mode\
> :e /etc/bandit_pass/bandit26

> password: ***5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z***