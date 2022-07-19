//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifierTest {

    uint public level = 9;
    string public name;
    uint public DNA;

    modifier controlLevel(uint needLevel) {
        require(level >= needLevel);
        _;
    }

    function changeName() public  controlLevel(2) {
        name = "techyangjiang";
    }

    function changeDNA() public  controlLevel(10) {
        DNA = 999;
    }

    function changeLevel(uint _level) public {
        level = _level;
    } 

}