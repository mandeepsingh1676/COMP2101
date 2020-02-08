#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
echo -n "Enter your Name: "
read USER

title="Overlord"
myname=$USER
hostname=$HOSTNAME
DATE=$(date +%H:%M)
###############
# Main        #
###############
Monday=$(echo "Mercury")
Tuesday=$(echo "Venus")
Wednesday=$(echo "Earth")
Thursday=$(echo "Mars")
Friday=$(echo "Jupitere")
Saturday=$(echo "Saturn")
Sunday=$(echo "Uranus")
DAY=$(date +%A)

if [[ $DAY == 'Monday' ]];then
        echo "Title is $Monday"
elif [[ $DAY == 'Tuesday' ]];then
        echo "Title is $Tuesday"
elif [[ $DAY == 'Wednesday' ]];then
        echo "Title is $Wednesday"
elif [[ $DAY == 'Thursday' ]];then
        echo "Title $Thursday"
elif [[ $DAY == 'Friday' ]];then
        echo "Title $Friday"
elif [[ $DAY == 'Saturday' ]];then
        echo "Title $Saturday"
else
        echo "Title $Sunday"
fi
cat <<EOF
Welcome to planet $hostname, "$title $myname!"
It is a weekday at $DATE
EOF

