// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract structure{

    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address=>Car[]) public CarsByOwner;

    function examples()  public{
        Car memory toyota=Car("Toyota",1990,msg.sender);
        Car memory lambo=Car({year:2023,model:"Lambogini",owner:msg.sender});
        Car memory tesla;
        tesla.model="Tesla";
        tesla.year=2025;
        tesla.owner=msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);



    }
}