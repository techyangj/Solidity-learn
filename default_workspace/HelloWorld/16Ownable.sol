//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }


    // 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanCallThisFunc() external onlyOwner {
        // code
    }

    function anyOneCanCall() external {
        // code 
    }
}