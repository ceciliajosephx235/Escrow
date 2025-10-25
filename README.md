Escrow Smart Contract

A Clarity smart contract designed for **secure, conditional fund management** on the **Stacks blockchain**.  
The Escrow Smart Contract enables users to safely lock funds until predefined conditions are met, ensuring transparent and trustless transactions between parties.

---

Overview

The **Escrow Smart Contract** provides a decentralized solution for holding and releasing funds based on mutual agreements or automated conditions.  
It can be applied in peer-to-peer payments, freelance work, DAO operations, and other blockchain-based financial interactions.

---

Features

- **Secure Fund Locking:** Hold STX tokens in escrow until both parties agree to release.  
- **Conditional Release:** Automatically transfer funds once terms are fulfilled.  
- **Refund Mechanism:** Return escrowed funds to the sender if conditions are not met by the deadline.  
- **Transparent Operations:** Every transaction and contract state is visible and verifiable on-chain.  
- **Read-Only Queries:** Retrieve escrow information such as balances, deadlines, and participants without altering the blockchain state.

---

Contract Overview

| Function | Type | Description |
|-----------|------|-------------|
| `create-escrow` | Public | Initializes a new escrow agreement between sender and receiver. |
| `deposit` | Public | Allows the sender to deposit STX tokens into escrow. |
| `release` | Public | Releases the escrowed funds to the receiver after conditions are met. |
| `refund` | Public | Returns funds to the sender if the escrow expires or fails. |
| `get-details` | Read-only | Retrieves details about the escrow transaction. |
| `get-status` | Read-only | Returns the current status: `Pending`, `Released`, or `Refunded`. |

---

Example Usage

```clarity
;; Create an escrow between sender and receiver
(contract-call? .escrow create-escrow 'SP2C2...ABC 'SP3X9...XYZ u5000 u144)

;; Deposit 5000 STX into escrow
(contract-call? .escrow deposit u5000)

;; Release the funds when the condition is met
(contract-call? .escrow release)

;; Refund the sender if the condition fails
(contract-call? .escrow refund)
