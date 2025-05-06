Solidity Reference Types: Arrays, Mappings, and Structs

1. Arrays
   Reference Type: Arrays are reference types in Solidity.

Storage vs. Memory/Calldata:

Storage: Persists on the blockchain (permanent).

Memory/Calldata: Temporary (exists only during function execution).

Use Cases:

Ordered data storage.

Iteration over elements.

Security Risks:

Unlimited-size arrays + iteration → Risk of Denial of Service (DOS).
