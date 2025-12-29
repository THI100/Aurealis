Flow of the Aurealis Blockchain (View of Main Crate)
=================================================

Types:
------
- *record*: Smart contract information.
    - subtypes: custom (Community/dAPP created), transaction, staking.
- *information*: Sensitive information - user/address.

Main Flow:
----------

0. **Initialization**
   - Consensus: **Proof of Stake (PoS)** with **BFT-V** finality.
   - Block time: ~1 minute. Confirmation latency: ~2 seconds.
   - Staking requirements: Minimum 0.001 AUL + 40% of wallet balance. Stake capped at 13% per primary device IP.

1. **P2P Setup**
   - Activation of Peer-to-Peer relationships.
   - Topology: *Branches* (regional), *Roots* (continental), *Brains* (archive, unlimited retention).
   - Ratios: Root/Branches = 1/3, Brain/Root = 1/7.
   - Message propagation: Branch → Peer → Root → Brain.
   - Peer discovery: static.

2. **API**
   - Receive *information*/*record* from wallet apps (AuWal, dApps).

3. **Contracts**
   - Verify type: *record* OR *information*.
   - Apply subtype of *record* (transaction, staking, or custom smart contract).

4. **P2P Verification**
   - Check for duplicates in the network.
   - If duplicate found, the newest information is deleted.

5. **Engine**
   - Retrieves *information*/*record*.
   - **Validation::Verifier:**
     - Uses UTXO model for address and balance verification.
     - If no valid address exists, *record* is aborted.
   - **Validation::Memory:**
     - Holds transactions and applies consensus pre-checks.

   - **Consensus & Fees:**
     - Reactor::Consensus: If input = *record*, calculate fee + gas.
     - Fee distribution per transaction: Treasury (19.5–81%), Staking (15–75.5%), Developers (4%), Burn (0.5%).

   - **Memory Check:**
     - Case 1 (*information*): up to block size.
     - Case 2 (*record*): up to 1/3 block size.

     - Case 1 Flow:
       - Validate and format *information*.
       - SubCase 1: FRAGILE → create address.
         - Governance: Generates private key (mnemonic: 10 random words).
         - Hash FRAGILE *information* + key.
         - Immediate finality applied.
       - SubCase 2: Existent → direct finality applied.

     - Case 2 Flow:
       - Validate *record* format and size (≤ 1024 bytes).
       - **Validation::MIST:**
         - Clone *record* 3x.
         - ID Creation: build ID blob from *record*.
         - Activate **BFT-V** consensus.
         - Assign original = true, clones = false.
         - Hash ID blob → reduce to 32-bit format.
       - Form and structurize block.

   - **Finalization:**
     - Apply **Attributed Cards to Blocks (ACB):** Ace–King for records, Joker for information.
     - Apply MIST, MR (RingCT-like privacy), and attributed cards for privacy/security.
     - Apply immediate unchangeable finality.

6. **Blockchain Layer**
   - Retrieve blocks from Reactor.
   - **P2P Block Verification:**
     - Attach new block to latest block ID.
   - **Consensus Governance:**
     - Apply on-chain governance laws, treasury models.
   - **Storage:**
     - Add block to DB.
     - Distribute to network (Branch → Root → Brain).
     - Brain nodes archive indefinitely with dual backups.

---

Smart Contracts Execution:
--------------------------
- Virtual Machine: **WASM**.
- Supported Languages: **Rust, C++**.
- Contract size: ≤ 2048 bytes.
- Schema-based determinism for safety.
- Gas fees routed directly to Treasury.

---

Governance:
-----------
- On-chain voting system (“Verified Society”).
- Voting weight: default (1), donors (2), founders (3).
- Cold wallets lose voting rights until reactivated.
- Governance decides on fees, treasury distribution, and upgrades.

---

Privacy & Compliance:
---------------------
- Privacy: **MIST**, MIST IDs, RingCT-like MR, attributed cards.
- Accounts: Shaded, mnemonic-based keys.
- Compliance: No KYC; AML at transaction/orderbook/IP level.

---

Final Notes:
------------
- Block throughput: ~1 record/tx per second per thread (linear scaling).
- Energy: low consumption; server-based.
- Scalability: Layer 1 + native Layer 2 support.
- Interoperability: Atomic swaps supported (30% fee/gas discount), ERC/BIP standards in development.

