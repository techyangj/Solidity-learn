//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PayableTest {
    function pay() public payable {

    }

    function getBalance() public view  returns(uint) {
        return address(this).balance;
    } 

    function getThis() public view returns(address) {
        return address(this);
    }
    
    function getrandomBalance(address account) public view returns(uint) {
        return account.balance;
    }

    function transfer() public payable{
        address account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        payable(account).transfer(10 * 10**18);
    }

}