// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Global varaible blockchain,transaction,caller ki details store karte hain

contract global{
    
    function gloablVar() public view returns(address,uint,uint){
        address sender=msg.sender;
        uint timestamp=block.timestamp;
        uint blockNumber=block.number;

        return(sender,timestamp,blockNumber);
    }
}