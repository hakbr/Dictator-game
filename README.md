# Dictator-game
A computer simulation to find the optimal strategy in the Dictator Game
# Dictator Game Simulation

## Overview

This bash script simulates the Dictator Game, an economic experiment where a participant, known as the dictator, decides how much of a total amount to share with another participant, the recipient. The script implements different sharing strategies and calculates the average payoff for each strategy over multiple simulations.

## Script Structure

- **Number of Simulations:** The script runs a specified number of simulations (`num_simulations`) for each sharing strategy.

- **Initial Parameters:** The total amount available for sharing is set to `total_amount`. The initial share for the recipient is set to `recipient_share`.

- **Strategies:**
  - `equal_split_strategy`: The dictator shares half of the total amount in each simulation.
  - `generous_strategy`: The dictator shares three-quarters of the total amount in each simulation.
  - `selfish_strategy`: The dictator keeps the entire amount for themselves and shares nothing with the recipient.

- **Simulation Logic:**
  - The script iterates through each strategy, running the Dictator Game simulation for a specified number of times.
  - For each simulation, the dictator decides on the share according to the chosen strategy.
  - The average payoff for each strategy is calculated and displayed.

## Usage

1. **Run the Script:**
   - Execute the script by running `./.dictator.sh` in your terminal.

2. **Review Results:**
   - Observe the average payoff for each strategy over the specified number of simulations.

3. **Modify Parameters:**
   - Customize the total amount, recipient share, or the number of simulations according to your specific scenario.

## Example Modification

Here's a brief example of how to modify the script:
```bash
# Modify the total amount
total_amount=20

# Modify the number of simulations
num_simulations=5000
