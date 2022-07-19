//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Helloworld {
    string name = "Techyangj";
    
    function getName() public view returns(string memory) {
        return name;
    }
    
    function setName(string memory _name) public {
        name = _name;
    }

    function pureTest(string  memory _name) pure public returns(string memory) {
        return _name;
    }
}