//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract MulModifier {
    uint public a = 0;
    modifier mod1 {
        a = 1;
        _;
        a = 2;
    }

    modifier mod2 {
        a = 3;
        _;
        a = 4;
    }

    function test()public mod1 mod2 {
        a = 100;
    }
}