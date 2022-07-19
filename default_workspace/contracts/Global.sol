//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Global {
    function getglobal() public view returns(address) {
        return msg.sender;
    }

    function getglobal2() public view returns(uint) {
        return block.difficulty;
    }

    function getglobal3() public view returns(uint) {
        return block.number;
    }

    function getglobal4() public view returns(address) {
        return block.coinbase;
    }

}