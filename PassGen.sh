#!/bin/bash

TEST_STRING1=1

echo "This is a robust password generator that allows you to customize your password spasifically to your needs"
echo "Do you want your password to contain special charicters? Examples of special charicters: ()*&^%@!:;?.>,<"
echo "1 = yes (recomended)"
echo "2 = no"
read P_COMPLEX

if [[ $P_COMPLEX -eq $TEST_STRING1 ]]; 
then
    ENCODING_TYPE="-base64"

else
    ENCODING_TYPE="-hex"
fi

echo "How many charicters long do you want your password to be?"
read PASSWD_LENGTH

for p in $(seq 1 5);
do 
    openssl rand $ENCODING_TYPE 48 | cut -c1-$PASSWD_LENGTH

done