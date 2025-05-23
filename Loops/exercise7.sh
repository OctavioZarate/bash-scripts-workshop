#Write a script to play the game rock, paper, scissors against the machine.
#The user must be able to play as many times as they wish.

#!/bin/bash

echo "Welcome to rock, paper or scissors"

continue="y"

while [ "$continue" = "y" ]; do
  echo ""
  read -p "Choose (rock, paper, scissors): " player

  #Machine
  number=$((RANDOM % 3))
  if [ $number -eq 0 ]; then
    machine="rock"
  elif [ $number -eq 1 ]; then
    machine="paper"
  else
    machine="scissors"
  fi

  echo "Machine choose: $machine"

  #Winner/Loser
  if [ "$player" = "$machine" ]; then
    echo "Tie"
  elif [ "$player" = "rock" ] && [ "$machine" = "scissors" ] || \
       [ "$player" = "paper" ] && [ "$machine" = "rock" ] || \
       [ "$player" = "scissors" ] && [ "$machine" = "paper" ]; then
    echo "You win"
  else
    echo "You lose"
  fi

  #asking to play again
  read -p "¿want to play again? (y/n): " continue
done

echo "End of the game"
