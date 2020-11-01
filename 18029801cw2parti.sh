Script started on 2020-03-12 10:21:35+05:45
abhi@DESKTOP-QM7Q8GF:~$ PS1='$PWD> '
/home/abhi> #Task 1:
/home/abhi> mkdir -p Cricket/{India,Australia,England,Pakistan,Bangladesh}
/home/abhi> tree Cricket
Cricket
├── Australia
├── Bangladesh
├── England
├── India
└── Pakistan

5 directories, 0 files
/home/abhi> #Task 2:
/home/abhi> cd Cricket/India
/home/abhi/Cricket/India> pwd
/home/abhi/Cricket/India
/home/abhi/Cricket/India> touch file1 file2
/home/abhi/Cricket/India> #Task 3:
/home/abhi/Cricket/India> cd ..
/home/abhi/Cricket> rm -i India/*
rm: remove regular empty file 'India/file1'? y
rm: remove regular empty file 'India/file2'? y
/home/abhi/Cricket> ls India
/home/abhi/Cricket> rm -iR India
rm: remove directory 'India'? y
/home/abhi/Cricket> ls India
ls: cannot access 'India': No such file or directory
/home/abhi/Cricket> #Task 4:
/home/abhi/Cricket> echo -e "Cricket is a bat and ball game played between two teams.\n14 < (2+2)"
Cricket is a bat and ball game played between two teams.
14 < (2+2)
/home/abhi/Cricket> pwd
/home/abhi/Cricket
/home/abhi/Cricket> cd Australia
/home/abhi/Cricket/Australia> pwd
/home/abhi/Cricket/Australia
/home/abhi/Cricket/Australia> #Task 5:
/home/abhi/Cricket/Australia> pwd; cd; pwd
/home/abhi/Cricket/Australia
/home/abhi
/home/abhi> echo -e "Here, 'pwd' prints the present working directory first.\nThen 'cd' changes the working directory to the home directory.\nFinally, 'pwd' again prints the current working directory i.e. home directory."
Here,'pwd' prints the present working directory first.
Then 'cd' changes the working directory to the home directory.
Finally, 'pwd' again prints the current working directory i.e. home directory.
/home/abhi> #Task 6:
/home/abhi> cd Cricket/Australia
/home/abhi/Cricket/Australia> pwd; cd ..; pwd; cd ..; pwd
/home/abhi/Cricket/Australia
/home/abhi/Cricket
/home/abhi
/home/abhi> echo -e "Here, 'pwd' prints the present working directory first.\nThen 'cd ..' changes the directory one step backwards i.e. Cricket directory and 'pwd' prints the working directory.\nFinally, the other 'cd ..' command takes us back to the home directory and 'pwd' again displays that directory."
Here, 'pwd' prints the present working directory first.
Then 'cd ..' changes the directory one step backwards i.e. Cricket directory and 'pwd' prints the working directory.
Finally, the other 'cd ..' command takes us back to the home directory and 'pwd' again displays that directory.
/home/abhi> #Task 7:
/home/abhi> cd; pwd
/home/abhi
/home/abhi> echo -e "Here, 'cd' changes the current working directory to the home directory and 'pwd' displays that directory."
Here, 'cd' changes the current working directory to the home directory and 'pwd' displays that directory.
/home/abhi> ls
18029801cw2parti  Cricket
/home/abhi> echo -e "Here, 'ls' displays all of the files and directories existing in the current working directory."
Here, 'ls' displays all of the files and directories existing in the current working directory.
/home/abhi> ls -a
.  ..  18029801cw2parti  .bash_history  .bash_logout  .bashrc  Cricket  .local  .profile
/home/abhi> echo -e "Here, 'ls -a' displays all of the hidden and unhidden files and directories existing in the current working directory."
Here, 'ls -a' displays all of the hidden and unhidden files and directories existing in the current working directory.
/home/abhi> ls -al
total 16
drwxr-xr-x 1 abhi abhi 4096 Mar 12 10:21 .
drwxr-xr-x 1 root root 4096 Mar 14  2020 ..
-rw-rw-rw- 1 abhi abhi    0 Mar 12 10:21 18029801cw2parti
-rw------- 1 abhi abhi 5508 Mar 12 10:17 .bash_history
-rw-r--r-- 1 abhi abhi  220 Mar 14  2020 .bash_logout
-rw-r--r-- 1 abhi abhi 3527 Mar 12 10:03 .bashrc
drwxrwxrwx 1 abhi abhi 4096 Mar 12 10:22 Cricket
drwxrwxrwx 1 abhi abhi 4096 Mar 14  2020 .local
-rw-r--r-- 1 abhi abhi  807 Mar 14  2020 .profile
/home/abhi> echo -e "Here, 'ls -al' displays all of the hidden and unhidden files and directories existing in the current working directory along with their properties."
Here, 'ls -al' displays all of the hidden and unhidden files and directories existing in the current working directory along with their properties.
/home/abhi> #Task 8:
/home/abhi> cd; pwd; cd Cricket; pwd
/home/abhi
/home/abhi/Cricket
/home/abhi/Cricket> echo -e "Here, 'cd' changes the current working directory to the home directory and 'pwd' displays that directory.\nThen it changes the directory to Cricket and 'pwd' again displays the working directory."
Here, 'cd' changes the current working directory to the home directory and 'pwd' displays that directory.
Then it changes the directory to Cricket and 'pwd' again displays the working directory.
/home/abhi/Cricket> ls -R
.:
Australia  Bangladesh  England  Pakistan

./Australia:

./Bangladesh:

./England:

./Pakistan:
/home/abhi/Cricket> echo -e "Here, 'ls -R' displays all of the files and directories existing in the current working directory in a recursive manner."
Here, 'ls -R' displays all of the files and directories existing in the current working directory in a recursive manner.
/home/abhi/Cricket> #Task 9:
/home/abhi/Cricket> cd Australia
/home/abhi/Cricket/Australia> cat>testX
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
^Z
[1]+  Stopped                 cat > testX
/home/abhi/Cricket/Australia> cat>testY
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
^Z
[2]+  Stopped                 cat > testY
/home/abhi/Cricket/Australia> cat>testZ
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
^Z
[3]+  Stopped                 cat > testZ
/home/abhi/Cricket/Australia> #Task 10:
/home/abhi/Cricket/Australia> cat testX
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
/home/abhi/Cricket/Australia> cat testY
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
/home/abhi/Cricket/Australia> cat testZ
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
/home/abhi/Cricket/Australia> #Task 11:
/home/abhi/Cricket/Australia> cp testX testY testZ ../Bangladesh/
/home/abhi/Cricket/Australia> #Task 12:
/home/abhi/Cricket/Australia> cat testX testY testZ
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
/home/abhi/Cricket/Australia> echo -e "Here, 'cat testX testY testZ' concatenates the contents from files testX, testY and testZ."
Here, 'cat testX testY testZ' concatenates the contents from files testX, testY and testZ.
/home/abhi/Cricket/Australia> cat testX testY testZ > testResult
/home/abhi/Cricket/Australia> echo -e "Here, 'cat testX testY testZ > testResult' concatenates the contents from files testX, testY and testZ into testResult file."
Here, 'cat testX testY testZ > testResult' concatenates the contents from files testX, testY and testZ into testResult file.
/home/abhi/Cricket/Australia> cat testX - testY >> testResult
This is the concatenated file testResult.
Here testX, testY and testZ files are concatenated to the file testResult.
^Z
[4]+  Stopped                 cat testX - testY >> testResult
/home/abhi/Cricket/Australia> echo -e "The above command appends the content of testX - testY to the file testResult"
The above command appends the content of testX - testY to the file testResult
/home/abhi/Cricket/Australia> cat testResult
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
This is the concatenated file testResult.
Here testX, testY and testZ files are concatenated to the file testResult.
/home/abhi/Cricket/Australia> echo -e "Here, 'cat testResult' displays all of the contents of testResult file which is created by the concatenation of files textX, testY and testZ.\nIt was then appended with the content of testX - testY and added two more lines at the end."
Here, 'cat testResult' displays all of the contents of testResult file which is created by the concatenation of files textX, testY and testZ.
It was then appended with the content of testX - testY and added two more lines at the end.
/home/abhi/Cricket/Australia> #Task 13:
/home/abhi/Cricket/Australia> cat test[XYZ]
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
/home/abhi/Cricket/Australia> echo -e "Here, 'cat test[XYZ]' concatenates the contents from files testX, testY and testZ."
Here, 'cat test[XYZ]' concatenates the contents from files testX, testY and testZ.
/home/abhi/Cricket/Australia> #Task 14:
/home/abhi/Cricket/Australia> ls -l
total 4
-rw-rw-rw- 1 abhi abhi 438 Mar 12 10:25 testResult
-rw-rw-rw- 1 abhi abhi  80 Mar 12 10:23 testX
-rw-rw-rw- 1 abhi abhi  80 Mar 12 10:23 testY
-rw-rw-rw- 1 abhi abhi  80 Mar 12 10:23 testZ
/home/abhi/Cricket/Australia> chmod -rwx testX
/home/abhi/Cricket/Australia> ls -l testX
---------- 1 abhi abhi 80 Mar 12 10:23 testX
/home/abhi/Cricket/Australia> cat testX
cat: testX: Permission denied
/home/abhi/Cricket/Australia> cat >> testX
bash: testX: Permission denied
/home/abhi/Cricket/Australia> chmod +rw testX
/home/abhi/Cricket/Australia> ls -l testX
-rw-rw-rw- 1 abhi abhi 80 Mar 12 10:23 testX
/home/abhi/Cricket/Australia> cat testX
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
/home/abhi/Cricket/Australia> cat >> testX
dddee Eeeee
^Z
[5]+  Stopped                 cat >> testX
/home/abhi/Cricket/Australia> #Task 15:
/home/abhi/Cricket/Australia> cd ..
/home/abhi/Cricket> ls -l Australia
total 4
-rw-rw-rw- 1 abhi abhi 438 Mar 12 10:25 testResult
-rw-rw-rw- 1 abhi abhi  92 Mar 12 10:27 testX
-rw-rw-rw- 1 abhi abhi  80 Mar 12 10:23 testY
-rw-rw-rw- 1 abhi abhi  80 Mar 12 10:23 testZ
/home/abhi/Cricket> chmod -rwx Australia
/home/abhi/Cricket> ls -l Australia
ls: cannot open directory 'Australia': Permission denied
/home/abhi/Cricket> cat Australia/testX
cat: Australia/testX: Permission denied
/home/abhi/Cricket> cat>Australia/file
bash: Australia/file: Permission denied
/home/abhi/Cricket> ls Australia
ls: cannot open directory 'Australia': Permission denied
/home/abhi/Cricket> chmod +rwx Australia
/home/abhi/Cricket> ls -l Australia
total 4
-rw-rw-rw- 1 abhi abhi 438 Mar 12 10:25 testResult
-rw-rw-rw- 1 abhi abhi  92 Mar 12 10:27 testX
-rw-rw-rw- 1 abhi abhi  80 Mar 12 10:23 testY
-rw-rw-rw- 1 abhi abhi  80 Mar 12 10:23 testZ
/home/abhi/Cricket> cat Australia/testX
aaabb Aaaaa
AAAAA
bbbcc Bbbbb
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
dddee Eeeee
/home/abhi/Cricket> cat>Australia/file
This is a file.
^Z
[6]+  Stopped                 cat > Australia/file
/home/abhi/Cricket> ls Australia
file  testResult  testX  testY  testZ
/home/abhi/Cricket> #Task 16:
/home/abhi/Cricket> cd Bangladesh
/home/abhi/Cricket/Bangladesh> grep bb testX
aaabb Aaaaa
bbbcc Bbbbb
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays all the lines in file testX that contain the text bb."
The above executed command searches and displays all the lines in file testX that contain the text bb.
/home/abhi/Cricket/Bangladesh> grep -v bb testX
AAAAA
BBBBB
ff–ff Ccccc
CCCCC
cccdd Ddddd
DDDDD
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays all the lines in file testX that does not contain the text bb."
The above executed command searches and displays all the lines in file testX that does not contain the text bb.
/home/abhi/Cricket/Bangladesh> grep -n bb testX
1:aaabb Aaaaa
3:bbbcc Bbbbb
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays all the lines in file testX that contain the text bb with its corresponding line number."
The above executed command searches and displays all the lines in file testX that contain the text bb with its corresponding line number.
/home/abhi/Cricket/Bangladesh> grep -l bb *
testX
testY
testZ
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays all the lines of the files that contain the text bb."
The above executed command searches and displays all the lines of the files that contain the text bb.
/home/abhi/Cricket/Bangladesh> grep -i bb *
testX:aaabb Aaaaa
testX:bbbcc Bbbbb
testX:BBBBB
testY:aaabb Aaaaa
testY:bbbcc Bbbbb
testY:BBBBB
testZ:aaabb Aaaaa
testZ:bbbcc Bbbbb
testZ:BBBBB
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays all the lines of the files that contain the text bb and BB as -i option ignores the case of the text."
The above executed command searches and displays all the lines of the files that contain the text bb and BB as -i option ignores the case of the text.
/home/abhi/Cricket/Bangladesh> grep -i BB *
testX:aaabb Aaaaa
testX:bbbcc Bbbbb
testX:BBBBB
testY:aaabb Aaaaa
testY:bbbcc Bbbbb
testY:BBBBB
testZ:aaabb Aaaaa
testZ:bbbcc Bbbbb
testZ:BBBBB
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays all the lines of the files that contain the text bb and BB as -i option ignores the case of the text."
The above executed command searches and displays all the lines of the files that contain the text bb and BB as -i option ignores the case of the text.
/home/abhi/Cricket/Bangladesh> grep -c bb *
testX:2
testY:2
testZ:2
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays the number of lines of the files that contain the text bb."
The above executed command searches and displays the number of lines of the files that contain the text bb.
/home/abhi/Cricket/Bangladesh> grep '^A' *
testX:AAAAA
testY:AAAAA
testZ:AAAAA
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays all the lines of the files staring with A."
The above executed command searches and displays all the lines of the files staring with A.
/home/abhi/Cricket/Bangladesh> grep -n '^' testX
1:aaabb Aaaaa
2:AAAAA
3:bbbcc Bbbbb
4:BBBBB
5:ff–ff Ccccc
6:CCCCC
7:cccdd Ddddd
8:DDDDD
/home/abhi/Cricket/Bangladesh> echo -e "The above executed command searches and displays all the text of file testX starting with any letter along with its corresponding line number."
The above executed command searches and displays all the text of file testX starting with any letter along with its corresponding line number.
/home/abhi/Cricket/Bangladesh> #Task 17:
/home/abhi/Cricket/Bangladesh> alias lsaR='ls -aR'
/home/abhi/Cricket/Bangladesh> alias lsa='ls -a'
/home/abhi/Cricket/Bangladesh> alias
alias ls='ls --color=auto'
alias lsa='ls -a'
alias lsaR='ls -aR'
/home/abhi/Cricket/Bangladesh> cd
/home/abhi> lsaR
.:
.  ..  18029801cw2parti  .bash_history  .bash_logout  .bashrc  Cricket  .local  .profile

./Cricket:
.  ..  Australia  Bangladesh  England  Pakistan

./Cricket/Australia:
.  ..  file  testResult  testX  testY  testZ

./Cricket/Bangladesh:
.  ..  testX  testY  testZ

./Cricket/England:
.  ..

./Cricket/Pakistan:
.  ..

./.local:
.  ..  share

./.local/share:
.  ..  nano

./.local/share/nano:
.  ..
/home/abhi> lsa
.  ..  18029801cw2parti  .bash_history  .bash_logout  .bashrc  Cricket  .local  .profile
/home/abhi> #Task 18:
/home/abhi> unalias lsaR
/home/abhi> unalias lsa
/home/abhi> alias
alias ls='ls --color=auto'
/home/abhi> #Task 19:
/home/abhi> nano .bashrc
/home/abhi> exit
exit
There are stopped jobs.
/home/abhi> exit
exit

Script done on 2020-03-12 10:33:20+05:45
Script started on 2020-03-12 10:46:44+05:45
abhi@DESKTOP-QM7Q8GF:~$ PS1='$PWD> '
/home/abhi> alias
alias ls='ls --color=auto'
alias lsa='ls -a'
alias lsaR='ls -aR'
/home/abhi> lsaR
.:
.  ..  18029801cw2parti  .bash_history  .bash_logout  .bashrc  Cricket  .local  .profile

./Cricket:
.  ..  Australia  Bangladesh  England  Pakistan

./Cricket/Australia:
.  ..  file  testResult  testX  testY  testZ

./Cricket/Bangladesh:
.  ..  testX  testY  testZ

./Cricket/England:
.  ..

./Cricket/Pakistan:
.  ..

./.local:
.  ..  share

./.local/share:
.  ..  nano

./.local/share/nano:
.  ..
/home/abhi> lsa
.  ..  18029801cw2parti  .bash_history  .bash_logout  .bashrc  Cricket  .local  .profile
/home/abhi> #Task 20:
/home/abhi> cat >> .bashrc
alias noAllf='ls -a | wc -l'
^Z
[1]+  Stopped                 cat >> .bashrc
/home/abhi> #Task 21:
/home/abhi> cat >> .bashrc
alias noAsubsir='ls -aR | wc -l'
^Z
[2]+  Stopped                 cat >> .bashrc
/home/abhi> #Task 22:
/home/abhi> cat >> .bashrc
alias noAcs='ls -a | grep ^[gtw] | wc -l'
^Z
[3]+  Stopped                 cat >> .bashrc
/home/abhi> alias
alias ls='ls --color=auto'
alias lsa='ls -a'
alias lsaR='ls -aR'
alias noAcs='ls -a | grep ^[gtw] | wc -l'
alias noAllf='ls -a | wc -l'
alias noAsubsir='ls -aR | wc -l'
/home/abhi> #Task 23:
/home/abhi> noAllf
9
/home/abhi> echo -e "This is a group of commands that counts and displays the number of all files and directories in any working directory, including invisible files and directory names."
This is a group of commands that counts and displays the number of all files and directories in any working directory, including invisible files and directory names.
/home/abhi> #Task 24:
/home/abhi> noAsubsir
56
/home/abhi> echo -e "This is a group of commands that counts recursively and displays the number of all sub-directories encountered for any working directory including invisible file and directory names."
This is a group of commands that counts recursively and displays the number of all sub-directories encountered for any working directory including invisible file and directory names.
/home/abhi> #Task 25:
/home/abhi> noAcs
0
/home/abhi> echo -e "This is a group of commands that counts and displays the number of all files and directories in your account’s space with the names starting with g, t, and w."
This is a group of commands that counts and displays the number of all files and directories in your account’s space with the names starting with g, t, and w.
/home/abhi> #Task 26:
/home/abhi> fc -l
501      cat >> .bashrc
502      alias
503      exit
504      PS1='$PWD> '
505      alias
506      #Task 23:
507      noAllf
508      echo -e "This is a group of commands that counts and displays the number of all files and directories in any working directory, including invisible files and directory names."
509      #Task 24:
510      noAsubsir
511      echo -e "This is a group of commands that counts recursively and displays the number of all sub-directories encountered for any working directory including invisible file and directory names."
512      #Task 25:
513      noAcs
514      echo -e "This is a group of commands that counts and displays the number of all files and directories in your account’s space with the names starting with g, t, and w."
515      #Task 26:
/home/abhi> #Task 27:
/home/abhi> !-8
echo -e "This is a group of commands that counts recursively and displays the number of all sub-directories encountered for any working directory including invisible file and directory names."
This is a group of commands that counts recursively and displays the number of all sub-directories encountered for any working directory including invisible file and directory names.
/home/abhi> #Task 28:
/home/abhi> !c
cat >> .bashrc
^Z
[1]+  Stopped                 cat >> .bashrc
/home/abhi> exit
exit

Script done on 2020-03-12 10:51:10+05:45