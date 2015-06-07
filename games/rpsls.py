# Rock Paper Scissors Lizard Spock by Heark
# Made for Coursera class
# 6/7/2015 (C)opyright

# Required Modules
import sys
import random
import simplegui
import time

# Loading/Checking Modules
system_keys = sys.modules.keys()
def start():
    # Calling for the users name
    my_name = input("What is your name?").upper()
    print "Hello!", my_name, "Thanks for playing  RPSLS Created by Heark"
    
    # Calling for the users choice
    print "Rock Paper Scissors Lizard or Spock? "
    my_choice = input("Rock Paper Scissors Lizard or Spock?")
    
    # Created array for computer choices using numbers for a simplicity
    comp_choices = [1,2,3,4,5]
    comp_choice = random.choice(comp_choices) # Getting random number
    
    # Identifying my integers
    # instead of identifying the choices by text, I'll use numbers
    if my_choice == "rock" or "Rock":
        my_int = 1
        my_message = "Rock v"
    elif my_choice == "paper" or "Paper":
        my_int = 2
        my_message = "Paper v"
    elif my_choice == "scissors" or "Scissors":
        my_int = 3
        my_message = "Scissors v"
    elif my_choice == "lizard" or "Lizard":
        my_int = 4
        my_message = "Lizard v"
    elif my_choice == "spock" or "Spock":
        my_int = 5
        my_message = "Spock v"
    
    # Identifying computer choice by name.
    if comp_choice == 1:
        comp_message = "Rock"
    elif comp_choice == 2:
        comp_message = "Paper"
    elif comp_choice == 3:
        comp_message = "Scissors"
    elif comp_choice == 4:
        comp_message = "Lizard"
    elif comp_choice == 5:
        comp_message = "Spock"
    
    # Win and lose conditions
    if (my_int == comp_choice):
        print my_message, comp_message
        print "Tie!"
    elif (my_int == 1 and comp_choice == 3) or (my_int == 1 and comp_choice == 4) or (my_int == 2 and comp_choice == 1) or (my_int == 2 and comp_choice == 5) or (my_int == 3 and comp_choice == 2) or (my_int == 3 and comp_choice == 4) or (my_int == 4 and comp_choice == 5) or (my_int == 4 and comp_choice == 2) or (my_int == 5 and comp_choice == 1) or (my_int == 5 and comp_choice == 3):
        print my_message, comp_message
        print "You win!"
    else:
        print my_message, comp_message
        print "You Lose!"
start()
