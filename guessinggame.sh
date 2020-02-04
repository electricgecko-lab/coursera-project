#!/usr/bin/env bash
# File: guessinggame.sh

fid () {
	n=$(ls -a | wc -l)
}

clear
echo
echo

n=0
x=0

fid

while [[ $x -eq 0 ]]
do
  echo -n "     Guess the number of files in this directory: "
  read response
  echo
  if [[ -n ${response//[0-9]/} ]]
  then
    echo "$response is not a number, try again."
    echo
    echo
  elif [[ $response -gt $n ]]
  then
    echo "Your guess of $response is too high."
    echo
    echo
  elif [[ $response -lt $n ]]
  then
    echo  "Your guess of $response is too low."
    echo
    echo
  else
    x=1
  fi
done

echo
echo "     ************************************"
echo "     ************************************"
echo "     **                                **"
echo "     **  Your guess of $n is correct.  **"
echo "     **                                **"
echo "     ************************************"
echo "     ************************************"
echo
echo
