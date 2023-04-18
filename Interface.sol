// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface ICounter{
    function count() external view returns(uint);
    function inc() external;
}

contract CallInterface{

    uint public count;

    function examples(address _counter) external{
        ICounter(_counter).inc();
        count=ICounter(_counter).count();
    }
}