// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract PiggyBank{
    event Deposite(uint amount);
    event Withdraw(uint amount);


    address public owner=msg.sender;

    receive() external payable{
        emit Deposite(msg.value);
    }


    function withdraw() external {
        require(msg.sender==owner,"NOT OWNER");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}