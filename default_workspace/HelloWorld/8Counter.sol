//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint public counter;

    function inc() external {
        counter += 1;
    }

    function dec() external {
        counter -= 1;
    }

    
}