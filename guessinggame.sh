#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guessing Game"

files=$(ls | wc -w)
guess=0

function ask {
 echo -n "How many files are in the current directory?" 
 read guess
}

while [[ $guess -ne $files ]]
do
 ask
 if [[ $guess -eq $files ]]; then
  echo "You guessed. Congratulations!"
  continue
 elif [[ $guess -gt $files ]]; then
  echo "Your guess was too high. Please guess again:"
 else
  echo "Your guess was too low. Please guess again:"
 fi
done
