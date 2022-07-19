//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Destruct {
    address owner;
    uint public money = 0;

    constructor(){
        owner = msg.sender;
    }
    
    function increment() public {
        money += 10;
    }
    function kill() public {
        if(msg.sender == owner) {
            selfdestruct payable(owner);
        }
    }
}