Smart contracts utilize storage variables to persist data on the blockchain.

Storage Variables
  - Permanently stored on the blockchain  
  - Cost gas to modify (but reading is free)  
  - Exist for the contract's lifetime  
  - Allocate 32-byte slots (e.g., `0x0`, `0x1`)  
  - Use Little-Endian storage (`0x1` = `0x00...01`)  

syntax
```solidity
contract Example {
    // Storage variables (declared outside functions)
    uint256 public count = 0;  // Occupies slot 0x0
    string private message;    // Occupies slot 0x1
}
```  

Types:
- `public`: Auto-generates a getter function  
- `private`: Only accessible within the contract (but still publicly visible on-chain)  



