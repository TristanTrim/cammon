file1=pics/$(ls pics | head -n1)
file2=pics/$(ls pics | head -n2 | tail -n1)
if [ "$file1" == "$file2" ]
then
	#pics are the same
	echo pics is oddly empty!
	./usbreset /dev/bus/usb/002/017
	sleep 3
elif ./comperotron.sh $file1 $file2
then
	# nothing changed
	rm $file2
	#mv $file2 deleted
else
	# something changed
	mv $file1 stored
fi
