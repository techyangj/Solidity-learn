//SPDX-License-Identifier: MIT 
pragma solidity >= 0.4.16 < 0.9.0;

contract StorageData {
    uint storedData;    // uint256
    function set(uint x ) public {
        storedData = x;
    }
    function get() public view returns (uint) {
        return storedData;
    }
}