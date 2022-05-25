#!/bin/bash -x


echo -n "Select your choice (1-2) : "
read choice
case $choice in
	"1" )
	echo -n "Enter temperature (C) : "
	read tc
	
	tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
	echo "$tc C = $tf F"
	;;
	"2" )

	echo -n "Enter temperature (F) : "
	read tf

	tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
	echo "$tf = $tc"
	;;
	*)
	echo "Please select 1 or 2 only"
	exit 1
	;;
esac
