// contracts/MTCToken.sol
// contracts/mtcToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MTCToken is ERC20 {
    constructor() ERC20("MTC COIN", "MTC") {
        uint256 initialSupply = 1 * 10 ** 18 * 1e18;
        _mint(msg.sender, initialSupply);
    }
}