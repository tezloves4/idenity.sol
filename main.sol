// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Idenityconfirming {

    struct User {
    
    string name; 
    string addressInfo;
    string Id;
    bool verified;
    }

    mapping ( address => User) public users;
    
    function registerUser( string memory _name, string memory _addressInfo, string memory _id) public {
        require (users[msg.sender].verified == false, "User already registered");
        
        User memory newUser = User(_name, _addressInfo, _id, true);
        
        users[msg.sender] = newUser;
    }
}
