#!/bin/sh

exec_dir=$(pwd)
if [-z "$1" ]
then
	echo "error args : usage : base_check.sh <git source> [name of clone]"
	exit
fi
if [ -z "$2" ]
then
	dst="~/goinfre/temp_test"
else
	dst="~/goinfre/" $2 "_ulti"
fi
git clone $1 $dst
cd $dst
norm=$(norminette | grep -v "OK")
if [-z "$norm"]
	echo $'\033[131merror norm : \033[0m' 
	echo $norm
fi





cd $exec_dir
