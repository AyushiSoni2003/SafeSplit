# 🔐 SafeSplit – A Smart Wallet for Shared Crypto Expenses

SafeSplit is a Solidity-based smart contract application that enables users to create shared wallets (vaults) for splitting crypto expenses transparently and trustlessly. Whether you're roommates, friends on a trip, or members of a Decentralized Autonomous Organization, SafeSplit helps you log, approve, and settle expenses securely on-chain.

> 🚀 Built for the BlockDAG Hackathon under the **Smart Wallets & UX** theme.

---

## 🧠 Features

- 🔐 Create a shared vault with multiple trusted members
- 🧾 Log expenses (who paid, how much, and why)
- ✅ Approval/voting system for transparency
- 💸 One-click settle when everyone agrees
- 📊 View all vault members and expense history
- 🧪 Fully testable with Hardhat local node
- 🔌 Ready for gasless mode & social login integration
- 🛠 Modular smart contract design using Solidity

---

## 🧰 Tech Stack

| Layer          | Tools                                       |
| -------------- | ------------------------------------------- |
| Frontend       | React + Tailwind / Bootstrap                |
| Smart Contract | Solidity (deployed on BlockDAG)             |
| Blockchain SDK | BlockDAG SDK / EVM                          |
| Wallet         | MetaMask / BlockDAG Wallet                  |
| Data           | localStorage / IPFS                         |
| UI Design      | Figma                                       |
| Optional       | Email API / Push Protocol / Gasless Relayer |

---

## 🛠️ Setup Instructions

### 1. Clone the repo

```bash
git clone https://github.com/your-username/safesplit.git
cd safesplit
```

### 2. Install dependencies

```bash
npm install
```

### 3. Compile the contract

```bash
npx hardhat compile
```

### 4. Run local blockchain

In a new terminal:

```bash
npx hardhat node
```

### 5. Deploy the contract

In a second terminal:

```bash
npx hardhat run scripts/deploy.js --network localhost
```

---

## 📄 Contracts

### `SafeVault.sol`

- Manages a vault shared by multiple members
- Tracks expenses, votes, and settlement state

---

## 📂 Project Structure

```
safesplit/
├── contracts/
│   └── SafeVault.sol         # Smart contract
├── scripts/
│   └── deploy.js             # Deployment script
├── test/                     # (Coming soon)
├── .gitignore
├── hardhat.config.js
├── package.json
```

---

## 🧠 Planned Features

- ✅ Expense dashboard UI
- 🔐 Vault Factory Contract (for multi-group support)
- 🌐 BlockDAG Testnet deployment
- 🔗 Wallet Connect integration (via Ethers.js)
- 💸 Gasless UX with meta-transactions

---

## ✨ Credits

Built with 💡 by Team SafeSplit for the BlockDAG Hackathon.

👥 Team Members:
Ayushi Soni – Solidity Developer, Deployment & GitOps

Ankit Yadav – Frontend Developer (React + Tailwind)

Aaditya Jain – UI/UX Designer (Figma + User Flows)

Vaibhav Soni – DevOps & Testing (Hardhat, Node.js)

---

## 📜 License

This project is open source and available under the [MIT License](LICENSE).
