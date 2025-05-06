#!/bin/bash

# 🚀 Soundness CLI Setup Script (setup.sh)
# This script installs all dependencies, builds the CLI, and generates a wallet key

# Step 1: Update system and install dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl build-essential pkg-config libssl-dev

# Step 2: Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Step 3: Clone the Soundness Layer repository
git clone https://github.com/SoundnessLabs/soundness-layer.git
cd soundness-layer/soundness-cli

# Step 4: Build the CLI tool
cargo build --release

# Step 5: Make the CLI accessible globally
sudo cp target/release/soundness-cli /usr/local/bin/

# Step 6: Generate a wallet key pair
soundness-cli generate-key --name my-key
