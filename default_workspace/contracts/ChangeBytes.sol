//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract ChangeBytes {
    bytes9 name = 0x4c65636879616e676a;

    function changeBytes1() public view returns(bytes1){
        return bytes1(name);
    }

    function changeBytes2() public view returns(bytes2){
        return bytes2(name);
    }

    function changeBytes16() public view returns(bytes16){
        return bytes16(name);
    }
}