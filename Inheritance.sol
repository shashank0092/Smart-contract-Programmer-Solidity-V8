// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract A{

    function data1() public pure virtual returns(string memory){
        return "A";
    }

    function data2() public pure virtual returns(string memory){
        return "A";
    }

    function data3() public pure returns(string memory){
        return "A";
    }
}


contract B is A {

    function data2() public pure virtual override returns(string memory){
        return "B";
    }
    
}

contract C is A{
    function data2() public pure override returns(string memory){
        return "C";
    }
}

