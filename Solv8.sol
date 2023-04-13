// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// error ki length gas price decide karti hain
// error ko outside of contract declare karke us error ko dusre contracts main import kar sakte hain
// error shukla()

contract New{

    // SAFE MATHS

    function safeMaths()public pure returns(uint) {
        uint x=0;
        x--;
        return x;
    }

    function safeMaths2() public pure returns(uint){
        uint i=0;
        unchecked {i--;}
        return i;
    }


    // custome error

    address payable owner=payable(msg.sender);

    error Unauthorized(address caller);
    function withdraw() public{
        if(msg.sender!=owner){
            revert Unauthorized(msg.sender);
            owner.transfer(address(this).balance);
        }
    }

}