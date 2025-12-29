Aurealis Blockchain Datasheet
=============================

1. GENERAL INFORMATION

- **Blockchain Name:** Aurealis
- **Ticker Symbol:** AUL
- **Launch Date:** end-2026 – mid-2027
- **Initial Supply:** 3,559,600 AUL (22%)
- **Max Supply:** 16,180,000 AUL
- **Founders / Organization:**  
  - Chris Markov (Security & Architect)  
  - Bruna Oliveira (Governance & Economist)  
  - Lilian Ackerman (C and C++ Engineer)  
  - Thiago Marquezi (Blockchain Engineer)
- **Official Website:** In development  
- **Whitepaper Link:** In development  
- **Open Source Repository:** In development  

---

2. CONSENSUS & SECURITY

- **Consensus Mechanism:** Proof of Stake (PoS)
- **Block Time:** 1 minute
- **Average Confirmation Time:** ~2 seconds
- **Staking Requirements:** 0.001 AUL minimum, with 40% of wallet balance staked
- **Security Assumptions:**  
  - *Privacy:* MIST/RingCT applied, attributed cards, private keys  
  - *Cryptographic:* Custom 1024-bit AureaKx hashing, designed for future quantum resistance  
  - *Economics:* Fixed supply cap and fee/gas-based stabilization  
  - *Network:* Treasury-financed servers ensure global coverage, low latency, and resilience
- **51% Attack Resistance:** Not applicable under PoS  
- **Staking Centralization Resistance:** Hard cap of 13% stake per main IP. Wallets link addresses to primary device IPs; enforcement prevents excessive concentration.  
- **Finality Guarantees:**  
  - *BFT-V (Byzantine Fault Tolerance Vision):* Validator consensus supported by MIST records  
  - *ACB (Attributed Cards to Blocks):* Blocks receive card “protocols” (A, J, Q, K, 10, Joker) providing enhanced privacy, security, or special event rules  
  - *MR (Mist to Records):* RingCT-like system rehashing and shadowing addresses for privacy  

---

3. NETWORK ARCHITECTURE

- **Node Types:**
  - *Branches:* Regional validators with 3 months of archive storage
  - *Roots:* Continental validators with 6 months of archive storage
  - *Brains:* Long-term archives with unlimited retention and daily dual backups
  - *Ratios:* Root per Branches: 1/3, Brain per Root: 1/7
  - *Minimal viable network:* 1 Brain, 2 Roots
- **Node Operations:** Initially, all nodes are treasury-funded and maintained. Governance may later allow user-run nodes with incentives.
- **Topology:** Hybrid fully connected + tree structure (Branches ↔ Roots ↔ Brains)
- **Message Propagation:** Branch → Peer → Root → Brain
- **Peer Discovery:** Static
- **Bandwidth Requirements:** Branch: 1 Gbps & 50 TB / Root: 2–5 Gbps, 50 TB–Unlimited / Brain: 5 Gbps, Unlimited

---

4. TRANSACTION LAYER

- **Format:** Struct OOP, max size 1024 bytes
- **Fee Distribution per Transaction:**  
  - Developers: 4% (fixed priority)  
  - Treasury: 19.5–81% (primary priority)  
  - Staking: 15–75.5% (secondary priority)  
  - Burn: 0.5% (deflationary)  
- **Fee Calculation:** Governed by treasury cost models, capped between 10^-15 and 10^-9 AUL depending on transaction size
- **Mempool Design:** 64 MB, fee-sorted, stores smart contracts + default records, with re-send required on expiration/replacement
- **Scalability:** Layer 1 with native Layer 2 support
- **Account Model:** UTXO

---

5. SMART CONTRACTS & EXECUTION

- **Virtual Machine:** WASM
- **Supported Languages:** Rust, C++
- **Limitations:** Contracts limited to 2048 bytes, using pre-defined schemas for determinism and safety
- **Gas Model:** Direct to Treasury
- **Upgradeability:** Supported but constrained by contract size and schema
- **Future Work:** Modular/linked contract support planned for extended functionality

---

6. CURRENCY & TOKENOMICS

- **Native Currency:** Aureal (AUL)
- **Issuance Schedule:**  
  - 22% Initial supply: 20% founders, 15% treasury, 65% reserved distribution (cap 17.5% per user)  
  - 18% Airdrops: Triggered by economic “hot/cold” activity, with on-chain bonuses (1.2x). Stablecoins & crypto accepted for participation  
  - 60%: Order book via cold-state faucet  
- **Inflation/Deflation Model:** Capped supply with mostly neutral-to-deflationary design
- **Burn Mechanism:**  
  - *Slashing:* Violating staking rules → 20% burned penalty  
  - *Time Abuse:* Excess deposits/withdraws → 15x fee buffer burned  
  - *Default:* 0.5% of all fees burned permanently  
- **Treasury/Reserves:** Multi-account, fee/gas-backed
- **Stablecoin Integration:** Order book-based

---

7. GOVERNANCE & UPGRADES

- **Mode:** On-chain
- **Voting Mechanism:** Verified society model via forum app  
  - 1 vote = default, 2 votes = donors, 3 votes = founders  
  - Cold-wallets lose voting rights until reactivated  
- **Upgrade Process:** Proposals and voting, following original scheme
- **Community Role:** Central to fee, gas, and economic policy decisions

---

8. INTEROPERABILITY

- **Cross-chain Bridges:** None (future option)
- **Sidechains:** Community-driven testnets/testchains supported
- **Atomic Swaps:** On-chain supported (30% fee/gas discount, low mempool priority); off-chain not supported
- **Standards:** ERC/BIP compatibility in development

---

9. PRIVACY & COMPLIANCE

- **Features:** MIST, MIST IDs, attributed cards, shaded accounts, mnemonic-based private keys
- **Compliance:** No KYC; AML integrated at transaction/orderbook/IP level

---

10. ECOSYSTEM & COMMUNITY

- **Developer Tools:** In development
- **Wallets:** AuWal (State app)
- **Exchanges, Partnerships, Community:** To be announced

---

11. TECHNICAL SPECIFICATIONS

- **Hashing:** AureaKx (1024-bit, hex output)
- **Block Size:** 240–384 KB (dynamic)
- **Block Time:** ~1:10 minutes
- **Difficulty:** Transactional volume & attributed card-based
- **Network Bandwidth:** Meta: 5 Gbps & unlimited
- **Supported Platforms:** dApps, DeFi, StateApps

---

12. PERFORMANCE METRICS

- **Throughput:** ~1 transaction/record per second per thread (scales linearly)
- **Latency:** Branch→Root: 90 ms / Root→Root: 210 ms / Root→Brain: 360 ms
- **Network Throughput:** 0.8 Gbps
- **Energy Use:** Minimal; server-based
- **Storage:** 64 GB baseline
- **Threading:** 1:1 OS thread to system thread

---

13. DEVELOPMENT ROADMAP

- **Past Milestones:** Foundation
- **Current Version:** 0.2.9b
- **Future Goals:** verify and upgrade flow in docs
- **Planned Upgrades:** Loan system, State apps (Auction House, Forum), wallet app

---

14. RISKS & CHALLENGES

- **Attack Vectors:** Legal/KYC loopholes, AML enforcement risks
- **Scalability:** Cost of treasury-funded nodes, governance bottlenecks
- **Adoption Barriers:** Late entry, small smart contract size, fee/gas complexity
- **Regulatory Risks:** Laws, custody issues, AML/KYC compliance
- **Operational Risks:** Treasury mismanagement, reliance on hosting providers

---

15. REFERENCES & RESOURCES

- **Documentation, Papers, Community, Developer Portals:** In development

