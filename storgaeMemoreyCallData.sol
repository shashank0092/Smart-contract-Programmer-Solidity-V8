// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


// Data Locations->
// storage->>state variable
// memory->>data is in memory
// calldata->>it is also like memorey but can only use for function input

contract DataLocations{
    struct MyStruct{
        uint foo;
        string text;
    }

    mapping(address=>MyStruct) public myStructs;

    function exapmles() external{
        myStructs[msg.sender]=MyStruct(123,"shukla");
        MyStruct storage myStruct=myStructs[msg.sender];
    }
}