// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// encodePacked-->ISAME COLLLISON CREATE HOTA HAIN

contract HashFunc{
    function hash(string memory text,uint num,address addr) external pure returns(bytes32){
        return keccak256(abi.encodePacked(text,num,addr));
    }

    function encode(string memory text0,string memory text1) external pure returns(bytes memory){
        return abi.encode(text0,text1);
    }

    function encodePacked(string memory text0,string memory text1) external pure returns(bytes memory){
        return abi.encodePacked(text0,text1);
    }

}