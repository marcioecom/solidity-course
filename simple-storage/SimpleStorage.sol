// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SimpleStorage {
    uint256 myFavoriteNumber = 3;

    //uint256[] listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person(7, "Pat");
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToNumber[_name] = _favoriteNumber;
    }
}

