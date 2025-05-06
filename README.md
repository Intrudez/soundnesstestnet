
# 🧪 Soundness CLI Wallet Setup Guide

This guide will help you install and run the [Soundness CLI](https://github.com/SoundnessLabs/soundness-layer) on **Ubuntu 24.04 LTS** using **Windows Subsystem for Linux (WSL)**. You'll be able to generate a wallet key pair for interacting with the Soundness testnet.

---

## 🚀 One-Command Setup (Recommended)

Run this command in your Ubuntu terminal (WSL):

```bash
curl -sL https://raw.githubusercontent.com/<your-username>/<your-repo>/main/setup.sh | bash
```

> 🔁 Replace `<your-username>` and `<your-repo>` with your GitHub details.

This script will:
- Update your system
- Install Rust and dependencies
- Clone the Soundness repo
- Build the CLI
- Generate a wallet key

---

## ⚙️ Manual Setup (Step-by-Step)

### 1️⃣ Prerequisites

Make sure you have:
- Windows 10/11
- WSL installed (`wsl --install`)
- Ubuntu 24.04 LTS installed via the Microsoft Store

---

### 2️⃣ Update and Install Dependencies

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl build-essential pkg-config libssl-dev
```

---

### 3️⃣ Install Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
```

---

### 4️⃣ Clone the Soundness Repository

```bash
git clone https://github.com/SoundnessLabs/soundness-layer.git
cd soundness-layer/soundness-cli
```

---

### 5️⃣ Build the CLI

```bash
cargo build --release
```

---

### 6️⃣ Add the CLI to Your PATH

```bash
sudo cp target/release/soundness-cli /usr/local/bin/
```

---

### 7️⃣ Generate a Wallet Key Pair

```bash
soundness-cli generate-key --name my-key
```

This will generate and display your public address and private key.  
**⚠️ Keep your private key safe and never share it.**

---

## 📂 Files in This Repo

- `setup.sh` – Full setup script for automatic installation and key generation
- `README.md` – This guide

---

## 🔗 Resources

- [Soundness Testnet Repo](https://github.com/SoundnessLabs/soundness-layer)
- [Rust Language](https://www.rust-lang.org/tools/install)
- [Ubuntu on WSL Docs](https://learn.microsoft.com/en-us/windows/wsl/)

---

## 🛠️ Support

Feel free to open an issue or discussion if you encounter problems or want to contribute!
