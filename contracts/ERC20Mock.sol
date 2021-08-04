//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @dev THIS CONTRACT IS FOR TESTING PURPOSES ONLY.
 */
contract ERC20Mock is ERC20 {
    constructor() ERC20("Cake", "$C") {
    }

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }
}