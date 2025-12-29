Structs for Aurealis Blockchain
===============================

Type of vision:
---

- User:

    - Note: Used when the user inputs the information, show the user private data.

    - *record*:

        - transaction:

                {
                sender: string,
                receiver: string,
                timestamp: string,
                amount_upper: u64,
                amount_lower: u64,
                type: u32
                }

        - loan:
                
                {
                user: string,
                colateral: {
                        address: string,
                        type: string,
                        amount: u64
                        },
                amount: u64,
                interest_rate: f64,
                timestamp: string
                }

        - staking:

                {
                user: string,
                amount_upper: u64,
                amount_lower: u64,
                timestamp: string,
                fee: u64
                }

    - *information*:

        - private_information:

                {
                private_address: string,
                private_password: string,
                credit_score: u32,
                device_ip: string,
                main_ip: string
                }

        - account_information:

                {
                public_address: string,
                credit_score: u32
                }

---

- System:
    - Note: Public data storaged in the database of the blockchain.

    - *record*:

        - transaction:

                {
                sender: string,
                receiver: string,
                timestamp: string,
                amount_upper: u64,
                amount_lower: u64,
                type: u32,
                fee: u64,
                gas: u64,
                id: string,
                mist_id: string
                }

        - loan:

                {
                user: string,
                colateral: {
                        address: string,
                        type: string,
                        amount: u64
                        },
                amount: u64,
                interest_rate: f64,
                duration: u64,
                timestamp: string,
                id: string,
                mist_id: string
                }


        - staking:

                {
                user: string,
                amount_upper: u64,
                amount_lower: u64,
                timestamp: string,
                fee: u64,
                id: string,
                mist_id: string
                }


        - custom:

                {
                register_of_custom_id: string,
                fee: u64,
                gas: u64,
                metauser: vec,
                metadata: vec,
                timestamp: string,
                id: string,
                mist_id: string
                }


    - *information*:

        - account:

                {
                public_address: string,
                credit_score: u32,
                timestamp: string
                }

        - register_of_custom:

                {
                id: string,
                custom_records: vec,
                timestamp: string
                }

        - credit_issuing (in work):

                {
                public_address: string,
                }

    - block:

                {
                contents: vec,
                timestamp: string,
                id: string,
                prev_id: string,
                acb_card: u8
                }
    
---