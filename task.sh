#!/bin/bash



mkdir -p task/dir3/dir4 task/dir1 task/dir2

cd ./task

touch dir2/empty

echo -e '#!/bin/bash\necho "\$1, Hello!"' > dir2/hello.sh

chmod 764 dir2/hello.sh 

ls dir2 >dir2/list.txt 

cp -r dir2/* dir3/dir4/

find . -type f -name "*.txt" > dir1/summary.txt

cat dir2/list.txt >> dir1/summary.txt 

export NAME="To all students" 


bash dir2/hello.sh "$NAME" >> dir1/summary.txt

mv dir1/summary.txt "Practical Task"


cat "Practical Task"

grep -i 'dir' "Practical Task" | sort


cd ..

rm -rf task