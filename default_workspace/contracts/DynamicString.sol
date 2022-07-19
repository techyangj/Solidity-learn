//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract DynamicString {
    string name = "techyangj";

    function getLength() public view returns(uint) {
        return bytes(name).length;
    }

    function changeName()public returns(bytes1) {
        return bytes(name)[1];
    }

    function getName() public view returns(bytes memory){
        return bytes(name);
    }
    
    function changeName1() public {
        bytes(name)[0] = 'L';
    }


}