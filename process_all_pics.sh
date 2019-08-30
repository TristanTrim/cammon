while true
do
	file1=pics/$(ls pics | head -n1)
	file2=pics/$(ls pics | head -n2 | tail -n1)
	if [ "$file1" == "$file2" ]
	then
		break
	fi
	./diffs.sh
done
