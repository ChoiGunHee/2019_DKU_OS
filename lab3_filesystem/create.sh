#! /bin/bash

echo "--------------------------------------------"
echo "Hi"
echo "This workload has a very long execution time"
echo "It will run in 5 seconds"
echo "--------------------------------------------"

sleep 5

for((i=0;i<27;i++)); do
	echo $i
	mkdir ./mnt/$i
	for((j=0;j<10000;j++)); do
		echo $j
		echo "this is test file" > ./mnt/$i/$j
	done
done

for((i=0;i<27;i+=1)); do
	echo $i
	for((j=0;j<10000;j+=5)); do
		rm ./mnt/$i/$j
	done
	for((j=0;j<10000;j+=7)); do
		rm ./mnt/$i/$j
	done
done

for((i=0;i<40;i++)); do
	mkdir ./mnt/lab_folder_$i
done

for((i=0;i<40;i++)); do
	mkdir ./mnt/lab_folder_$i/lab_inside_folder_$i
done

for((i=39;i>=0;i--)); do
	echo "this is lab file ${i} "  > ./mnt/lab_folder_$i/lab_inside_folder_$i/$i.txt
	for((j=0;j<400;j++)); do
		echo "this is lab file ${i} "  >> ./mnt/lab_folder_$i/lab_inside_folder_$i/$i.txt
	done
done

for((i=0;i<40;i++)); do
	echo "location : ./mnt/lab_folder_${i}/lab_inside_folder_${i}/${i}.txt"
	ls ./mnt/lab_folder_${i}/lab_inside_folder_${i}/
done

echo "Done!!!!!!"
