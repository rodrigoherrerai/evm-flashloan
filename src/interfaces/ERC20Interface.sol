// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0;

interface ERC20Interface {
    function approve(address spender, uint256 amount) external returns (bool);

    function balanceOf(address sr) external view returns (uint256);

    function transfer(address recipient, uint256 amount) external returns (bool);
}
