#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
#First name is 'Mandeep' andn has 7  letters so,
echo "
Rolling...
$(( RANDOM % 6 + 1)) $(( RANDOM % 6 + 1)) $(( RANDOM % 6 + 1)) $(( RANDOM % 6 + 1)) $(( RANDOM % 6 + 1)) $(( RANDOM % 6 + 1)) $(( RANDOM % 6 + 1)) rolled
"
