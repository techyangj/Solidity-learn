//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract father {
    uint  money = 1000;

    function dahan() internal returns(string memory) {
        return "dahan";
    }
}

contract son is father {
    function getMoney() public returns(uint) {
        return money;
    }

    function test() public returns(string memory) {
        return dahan();
    }
}

