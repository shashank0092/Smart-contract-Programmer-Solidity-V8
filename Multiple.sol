// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract MultipleInheritanceA{

    function data1() public pure virtual returns(string memory){
        return "A";
    }


    function data2() public pure virtual returns(string memory){
        return "A";
    }
}


contract MultipleInheritanceB is MultipleInheritanceA{

    function data1() public pure virtual override returns(string memory){
        return "B";
    }

    function data2() public pure virtual override returns(string memory){
        return "B"; 
    }
}


contract MultipleInheritanceC is MultipleInheritanceA,MultipleInheritanceB{
    function data1() public pure  override(MultipleInheritanceA,MultipleInheritanceB) returns(string memory){
        return "C";
    }

    function data2() public pure  override(MultipleInheritanceA,MultipleInheritanceB) returns(string memory){
        return "C"; 
    }
}

