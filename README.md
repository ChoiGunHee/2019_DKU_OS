# 2019_DKU_OS


This is a place for studying Operaing System in Dankook University.
- Professor : Jongmoo Choi
- Assistant : Gunhee Choi (Email : choi_gunhee@dankook.ac.kr)
- 2019 DKU Operating System Course Information [link](http://embedded.dankook.ac.kr/~choijm/course/course.html)


## Download Environment
Virtual Machine Platform: VirtualBox 6.0

Operating System: Ubuntu 16.04

[Image Download Link](https://drive.google.com/drive/folders/1nDOef1QCtXNO49R87IVuYgpwCOdOsPK7?usp=sharing)

This environment is based on VirtualBox 6.0.
If image execution is not possible, we recommend reinstalling VirtualBox 5.2 version.

[Virtual Box 5.2 Link](https://www.virtualbox.org/wiki/Download_Old_Builds_5_2)

## Clone Git Repository
git clone https://github.com/ChoiGunHee/2019_DKU_OS.git

If you get an error there are no commands, install git with following command :

sudo apt-get install git


## Lab1
If you want to proceed to Lab1, go to command below :

cd lab1_sched

make

./lab1_sched

Documentation for conducting the assignment can be found at following link :

[Lab1 Documentation Link](http://embedded.dankook.ac.kr/~choijm/course/201901OSI/Lab1_sched.pdf)

## Lab2
If you want to proceed to Lab2, go to command below :

cd lab2_sync

make lab2_example

./lab2_example –t 4 –i 1000000 –s o

./lab2_example –t 4 –i 1000000 –s m

The above command is an example.

See the documentation for details.

Documentation for conducting the assignment can be found at following link :

[Lab2 Documentation Link](http://embedded.dankook.ac.kr/~choijm/course/201901OSI/Lab2_sync.pdf)

## Lab3

If you want for proceed to Lab3, go to command below :
cd lab3_filesystem

make

insmod ramdisk.ko

mkdir mnt

mkfs.fat -F 32 /dev/ramdisk

mount /dev/ramdisk ./mnt

./create.sh

See the documentation for details.

[Lab3 Documentation Link](http://embedded.dankook.ac.kr/~choijm/course/201901OSI/Lab3_filesystem.pdf)

Bonus Image Link : [IMAGE_LINK](https://drive.google.com/open?id=1nDOef1QCtXNO49R87IVuYgpwCOdOsPK7)
