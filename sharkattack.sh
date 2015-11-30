#!/bin/bash
# sharkattack by Tim Cheeseman
# Live Dangerously.

# Path to data (e.g. sharks)
SHARK_ATTACK_DATA='/var/lib/sharkattack'

# Set to 'plain', 'color', or 'curses'
SHARK_ATTACK_MODE='curses'

# Set to 'shark' or 'cat'
SHARK_ATTACK_TYPE='shark'

# Creates an alias.
#
# @param alias      the name of the alias to create
# @param command    the command you want to alias
# @param threshold  your tolerance for danger (1-100)
#
function shark_alias {
    alias=$1
    command=$2
    threshold=$3

    SHARK_ATTACK_TYPE='shark'

    alias "$alias"="shark_swim '$command' $threshold"
}

# Creates an alias.
#
# @param alias      the name of the alias to create
# @param command    the command you want to alias
# @param threshold  your tolerance for danger (1-100)
#
function cat_alias {
    alias=$1
    command=$2
    threshold=$3

    SHARK_ATTACK_TYPE='cat'

    alias "$alias"="shark_swim '$command' $threshold"
}

# Either runs your command or feeds it to the sharks.
#
# @param command            the command to try to run, if you can swim fast enough
# @param danger_threshold   your tolerance for danger (1-100)
#
function shark_swim {
    command=$1
    danger_threshold=$2

    danger=$(( (RANDOM % 100) + 1 ))
    if [ "$danger" -gt "$danger_threshold" ]
    then
        $command ${*:3}
    else
        sharkattack --mode "$SHARK_ATTACK_MODE" --data "$SHARK_ATTACK_DATA" --type "$SHARK_ATTACK_TYPE"
    fi
}

