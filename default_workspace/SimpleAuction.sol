//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract C {
    function f(uint a) private pure returns(uint b) {
        return a + 1;
    }

    function setData(uint a) internal {
        data = a;
    }

    function addf(uint _x) public returns(uint a) {
        setData(_x);
        a = f(_x);
        return a;
    }
    uint public data;
}