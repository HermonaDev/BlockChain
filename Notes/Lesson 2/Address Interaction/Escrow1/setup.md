Key Concepts:
State variables are variables declared in a contract that are permanently stored on the blockchain.

They retain their values between function calls and transactions.

Public state variables automatically create getter functions, allowing easy access to their values.

Properties:
Persistent: State variables are stored on the blockchain and are not cleared between transactions.

Public access: Declaring a variable as public automatically generates a getter function to retrieve the value.

Gas cost: Modifying state variables requires gas, as it changes the contract's state on the blockchain.

Storage: Unlike variables in memory, state variables are stored on the blockchain, which makes them permanent.

Use Cases:
Storing contract data: E.g., balances, ownership, permissions, and transaction states.

Multi-party contracts: Storing addresses of involved parties (e.g., depositor, beneficiary, arbiter in an escrow).

Tracking states: Keeping track of stages in a process (e.g., escrow status, contract conditions).

