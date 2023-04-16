// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// private -->> only inside the contract
// internal-->>only inside contract & child contarct
// public-->>inside and outside of contract
// external-->outside of contract

contract V1{

    function privateFunction() private pure returns(string memory){
        return "I AM PUBLIC FUNCTION";
    }

    function publicFunction() public pure returns(string memory){
        return "I AM PUBLIC FUNCTION";
    }

    function internalFunction() internal pure returns(string memory){
        return "I AM INTERNAL FUNCTION";
    }

    function externalFunction() external pure returns(string memory){
        return "I AM EXTERNAL FUNCTION";
    }

}