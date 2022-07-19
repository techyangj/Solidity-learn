//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bytes32ToString {
    bytes2 name = 0x7a68;
    
    // not allow bytes => string
    // function changeIt() public view returns(string memory){
    //     return string(name);
    // }

    // bytes2 => bytes => string 
    function bytes32ToString(bytes32 _newname) public pure returns(string memory) {
        bytes memory newname = new bytes(_newname.length);
        
        for(uint i = 0; i < _newname.length; i++) {
            newname[i] = _newname[i];
        }
        return string(newname);
    }




}