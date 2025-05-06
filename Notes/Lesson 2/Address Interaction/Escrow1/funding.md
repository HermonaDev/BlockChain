Key Concepts:
Payable functions in Solidity allow contracts to receive Ether.

Marking the constructor as payable means the contract can be funded during deployment.

This is essential for escrow contracts, where Ether is held until a condition is met.

Properties:
Only payable functions can receive Ether.

If a function (including the constructor) is not marked as payable, sending Ether will cause the transaction to revert.

Funds sent to the contract are stored in the contract’s balance.

Use Cases:
Escrow contracts: Depositor funds the contract at deployment.

Crowdfunding contracts: Collecting funds from multiple contributors.

Initial token sales (ICOs): Receiving payments in exchange for tokens.
