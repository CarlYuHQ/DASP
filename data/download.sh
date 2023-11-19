#!/bin/bash
CURDIR=$(pwd)

if [ -d $CURDIR/RAMS_1.0 ];then 
	rm -Rf $CURDIR/RAMS_1.0
fi


if [[ "$CURDIR" =~ "DASP/data" ]]
then
	echo "please run this script under the root dir of the project, eg directory DASP "
	echo "please input the command ' cd .. ' then press return "
	exit -1
else
	echo "downloading data from a server ... "
fi

# Download RAMS
wget -c https://nlp.jhu.edu/rams/RAMS_1.0b.tar.gz
tar -zxvf ./RAMS_1.0b.tar.gz
rm -rf ./RAMS_1.0b.tar.gz
mv ./RAMS_1.0 ./data/

tree data
