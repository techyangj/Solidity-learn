//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract fixToDynamic {
    bytes12  name = 0x7a68656e676a69716e78756e;
    
    function fixBytesTodynamicBytes() public view returns(bytes memory) {
        bytes memory newName = new bytes(name.length);

        for(uint i = 0; i < name.length; i++) {
            newName[i] = name[i];
        }

        return newName;
    }
}