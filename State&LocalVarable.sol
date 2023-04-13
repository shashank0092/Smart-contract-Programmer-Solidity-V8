// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// THERE ARE THEREE TYPES OF VARAIBLE IN SOLIDITY LOCAL,STATE,GLOBAL
// STATE VARIABLE STORE DATA IN BLOCKCHAIN

contract state{
    uint public data=10; // state varable

    function DataSet() public pure returns(uint){
        uint data2=10; //local varaible
        return data2;
    }
}