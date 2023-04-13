// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ifelse{

    uint public data=10;

    function caller(uint i) public pure returns(string memory) {
        if(i==10){
            return "THIS IS 10";
        }
        else{
            return "THIS IS NOT 10";
        }
    }
}