//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArray {
    uint [] grade = [1,2,3,4,5];
    
    function changeContent() public{
        grade[0] = 100;
        grade[1] = 200;
    }

    function getLength() public view returns(uint) {
        return grade.length;
    }

    function getContent() public view returns(uint [] memory) {
        return grade;
    }

    function add() public view returns(uint) {
        uint sum = 0;
        for(uint i = 0; i < grade.length; i++) {
            sum += grade[i];
        }
        return sum;
    }

    function pushContent() public {
        grade.push(6);
    }

    // error
    // function changeLength() public{
    //     grade.length = 2;
    // }

    // function changeLength2() public {
    //     grade.length = 20;
    // }






}