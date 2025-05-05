Solidity Value Types  

1. `bool`  
- Stores `true` or `false`  
- Default: `false`  
- Use for on/off switches (e.g., `bool isActive = true;`)  

2. `uint` (Unsigned Integer)
- Whole numbers ≥ 0  
- Sizes: `uint8` (0-255) to `uint256` (huge)  
- Default: `0`  
- Use for counts (e.g., `uint256 totalSupply = 1000;`)  

3. `int` (Signed Integer)  
- Whole numbers (+/-)  
- Sizes: `int8` (-128 to 127) to `int256` (huge +/-)  
- Default: `0`  
- Use for balances (e.g., `int32 temperature = -5;`)  

4. `enum` 
- Custom list of options  
- Named constants (e.g., `enum Status { Pending, Shipped, Delivered }`)  
- Default: First item (`Status.Pending`)  

---

Example code snippet 
```solidity
contract Example {
    bool public isReady;          // false by default
    uint8 public quantity = 10;  // Must be ≥ 0
    int16 public delta = -20;    // Can be negative
    enum State { On, Off }       // Custom type
    State public current = State.Off;
}
