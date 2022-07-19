//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Test {
    uint256 favoriteNumber;

    struct People {
        string name;
        uint256 favoriteNumber;
    }

    // People public people = People({name: "Techyangj", favoriteNumber: 20});

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
}