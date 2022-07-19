//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BytesToString {
    bytes name = new bytes(2);
    
    function Init() public {
        name[0] = 0x7a;
        name[1] = 0x68;
    }

    function bytesToString() public view returns(string memory) {
        return string(name);
    }
}