//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Address {
    address public account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public account1 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    function  changeIt() public view returns(uint160) {
        return uint160(account); // 520786028573371803640530888255888666801131675076
    }

    function changeIt2() public pure returns(address) {
        return address(520786028573371803640530888255888666801131675076);
    } 

    function check1() public view returns(bool) {
       return account > account1;
    }

}