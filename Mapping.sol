// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


contract Mapping {
    mapping (address => uint) balances;

    function usecases() public returns(uint) {
        balances[msg.sender]=123;
        delete balances[msg.sender];
        return balances[msg.sender];
    }


}