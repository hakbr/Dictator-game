#!/bin/bash

# Number of simulations
num_simulations=1000

# Initial parameters
total_amount=10
recipient_share=0

# Strategies
equal_split_strategy() {
  local half_amount=$((total_amount / 2))
  echo "$half_amount"
}

generous_strategy() {
  local generous_share=$((total_amount * 3 / 4))
  echo "$generous_share"
}

selfish_strategy() {
  echo "$recipient_share"
}

# Function to simulate Dictator Game
simulate_dictator_game() {
  local strategy=$1
  local total_payoff=0

  for ((i = 1; i <= num_simulations; i++)); do
    recipient_share=$(($RANDOM % (total_amount + 1)))

    # Call the specified strategy function
    dictator_share=$(eval "$strategy")

    # Accumulate total payoff
    total_payoff=$((total_payoff + dictator_share))
  done

  # Calculate average payoff
  average_payoff=$((total_payoff / num_simulations))
  echo "$average_payoff"
}

# Run simulations for each strategy
for strategy in equal_split_strategy generous_strategy selfish_strategy; do
  echo "Simulating $strategy strategy..."
  average_result=$(simulate_dictator_game "$strategy")
  echo "Average payoff for $strategy: $average_result"
  echo
done
