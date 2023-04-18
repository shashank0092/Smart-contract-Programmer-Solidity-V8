// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


// selfdestruct contract delte kar sakta hain and forced ether send kar sakta hainj

contract Kill{
    constructor() payable{}

    function kill() external{
        selfdestruct(payable(msg.sender));
    }

    function testCall() external pure returns(uint){
        return 123;

    }
}