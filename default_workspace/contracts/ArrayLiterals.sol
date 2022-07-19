//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayLiterals {
    //error
    // function getArrayLiteral()public  returns(uint[3] memory) {
    //     return [1,2,3];
    // }

    function getArrayLiteral()public  returns(uint[3] memory) {
        return [uint(1),2,3];
    }
}