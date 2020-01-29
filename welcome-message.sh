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
# Variables #
###############
name="$USER"
date=$(date +'%I:%M %p')
hostname=$(hostname)
day=$(date +%A)
###############
# Main #
###############
cat <<EOF
if [ "$day" = "Monday" ]
then
Welcome to Earth $hostname, Optimist $name!
else
if [ "$day" = "Tuesday" ]
then
Welcome to Earth $hostname, Realist $name!
else
if [ "$day" = "Wednesday" ]
then
Welcome to Earth $hostname, Pessimist $name!
else
if [ "$day" = "Thursday" ]
then
Welcome to Earth $hostname, kathi $name!
else
if [ "$day" = "Friday" ]
then
Welcome to Earth $hostname, personalise $name!
else
if [ "$day" = "Saturday" ]
then
Welcome to Earth $hostname, Pessionist $name!
else
Welcome to Earth $hostname, motivated $name!
fi
fi
fi
fi
fi
EOF
echo "It is $date on $day ."
