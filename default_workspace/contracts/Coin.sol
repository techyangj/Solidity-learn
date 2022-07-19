//SPDX-License-Identifier: MIT 
pragma solidity >= 0.4.16 < 0.9.0;

contract Coin {
    address public minter;    //160
    mapping (address => uint) public balances;  

    event Sent(address from, address to, uint amount);

    constructor() {    // constructor functon  only start at contract begin  
        minter = msg.sender;  // msg.sender  put contract people 
    }

    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }

    error InsufficientBalance(uint requested, uint available);

    function send(address receiver, uint amount) public {
        if (amount > balances[msg.sender]) revert InsufficientBalance({requested: amount, available: balances[msg.sender]});
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);  
    }


}