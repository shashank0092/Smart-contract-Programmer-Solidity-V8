// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract enumBoi{
    enum status{
        None,
        passsed,
        submit,
        rejected
    }

    status public _status;
    
}