#!/bin/bash
name="Dmytro"
surname="Abramchuk"
sub1="KKK"
sub2="LLL"
sub3="MM"
sub4="GR1"
sub5="GR2"
group="131"
date=`date`
mail="samp.rp.5.server@gmail.com"

echo "Building folder sctructer of Variant 5"
mkdir -p $surname/{$sub1/{$sub4,$sub5},$sub2,$sub3}
cd $surname/$sub1/$sub4/
touch $name.txt
echo "Group: $group
Date: $date
Mail: $mail" > $name.txt
cp $name.txt ../$sub5/$surname.txt

echo "Copying $name.txt and $surname.txt to $surname folder"
cp $name.txt ../../
cp ../GR2/$surname.txt ../../
cd ../../

echo "Checking if $name.txt contain mail"
if grep -q $mail $name.txt; then
	echo "Mail found!! $mail"
else
	echo "Mail not found!!"
fi
