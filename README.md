# Aave flashloan example using Foundry 

This is a flashloan example using Aave on Arbitrum



## Introduction 

A flashloan is basically a loan that you can get without collateral but with a condition that you need to repay the amount + fees in the same block. 


## Steps

1. We fork Arbitrum mainnet at block n 51691847

2. We get a loan of 1000 weth -> check the following function in src/Flashloan.sol
```solidity
function flashloan(address asset, uint256 amount) external 
```

3. We repay the borrow + fees, check the following function in src/Flashloan.sol
```solidity 
function executeOperation(address asset, uint256 amount, uint256 premium, address, bytes calldata)
        external
        returns (bool)
```

* For this operation the fee was 0.05%, so we paid 0.5 weth for a 1000 weth loan. 


## Reproduction

Just run the following command: 
```
forge test -vv
```

### Note: You can modify the amount / asset, for this example we are using a fixed asset (weth) and a fixed amount (1000)

## License
# MIT