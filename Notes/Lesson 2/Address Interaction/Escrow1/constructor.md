Key Concepts:
A constructor is a special function in Solidity that runs once when the contract is deployed.

It is typically used to initialize state variables with values provided by the deployer.

This is useful in contracts like escrow, where the involved parties (arbiter, beneficiary, depositor) must be defined at creation.

Properties:
Single-use: Constructors execute only once, during contract deployment.

Immutable setup: Variables set in the constructor establish the initial conditions of the contract.

Automatic deployer access: The msg.sender in the constructor is the address deploying the contract—perfect for identifying the depositor.

Use Cases:
Escrow contracts: Assign roles (depositor, arbiter, beneficiary) at deployment.

Ownership contracts: Set the owner of the contract during deployment.

Token contracts: Define token details and supply in the constructor.

Solidity Basics:
Use constructor(...) to define parameters needed at deployment.
