#!/bin/bash

choices=("rock" "paper" "scissors")

while true; do
  echo "Choose rock, paper, or scissors (or type 'quit' to exit):"
  read user_choice

  [[ "$user_choice" == "quit" ]] && { echo "Thanks for playing!"; break; }

  [[ ! " ${choices[*]} " =~ " $user_choice " ]] && { echo "Invalid choice. Please choose rock, paper, or scissors."; continue; }

  comp_choice=${choices[RANDOM % 3]}
  echo "Computer chose: $comp_choice"

  case $user_choice in
    rock)      result="scissors";;
    paper)     result="rock";;
    scissors)  result="paper";;
  esac

  [[ "$comp_choice" == "$user_choice" ]] && echo "It's a tie!" || [[ "$comp_choice" == "$result" ]] && echo "You win!" || echo "Computer wins!"
done

