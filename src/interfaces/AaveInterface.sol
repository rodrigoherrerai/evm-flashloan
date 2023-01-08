// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0;

interface AaveInterface {
    function flashLoanSimple(
        address receiverAddress,
        address asset,
        uint256 amount,
        bytes calldata params,
        uint16 referralCode
    ) external;

    function FLASHLOAN_PREMIUM_TOTAL() external view returns (uint128);
}
