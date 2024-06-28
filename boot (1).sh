#!/bin/bash


echo "would you to play rock paper scissors? Yes/No" 
read answer

if [ $answer == "yes" ]
then 
    python3 python.py
   
    
else 
    echo "That's too bad, may be next time"
fi


