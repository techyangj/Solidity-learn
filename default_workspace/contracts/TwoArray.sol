//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TwoArray {
    uint[2][3] grade = [[1,2],[3,4],[5,6]];
    
    function getOneLength() public view returns(uint) {
        return grade.length;
    }

    function getTwoLength() public view returns(uint) {
        return grade[0].length;
    }

    function getContent() public view returns(uint[2][3] memory) {
        return grade;
    }

    function add() public view returns(uint) {
        uint sum = 0;
        for(uint i = 0; i < grade.length; i++) {
            for(uint j = 0; j < grade[0].length; j++) {
                sum += grade[i][j];
            }
        }
        return sum;
    }


    

}