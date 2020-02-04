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

title="Overlord"
USER="Albert"
hostname=$(hostname)
NOW=$(date +"%c")
day=$(date +"%A")
weekday=$(date +%u)

###############
# Main        #
###############


if [ "$day" = "Monday" ]
then
  title="Optimistic"
else
if [ "$day" = "Tuesday" ]
then
  title="funtastic"
else
  if [ "$day" = "Wednesday" ]
  then
    title="Realist"
else
  if [ "$day" = "Thursday" ]
  then
    title="Pessimist"
else
  if [ "$day" = "Friday" ]
  then
    title="Pessionist"
else
  if [ "$day" = "Saturday" ]
  then
    title="Strategic"
else
  if [ "$day" = "Sunday" ]
  then
    title="Luckiest"
fi
fi
fi
fi
fi
fi
fi

cat <<EOF

Welcome to planet $hostname, "$title $USER!"
EOF


if [ "$weekday" = "6" ] || [ "$weekday" = "7" ]
then
   echo "It is $NOW on Weekend."
else
   echo "It is $day on Weekday."
fi
