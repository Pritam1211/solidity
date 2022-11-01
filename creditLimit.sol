//Pritam Gaikwad 2019130013
//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract CreditLimit{
    uint limit = 10000;

    function checkBalance() public view returns(uint) {
        return limit;
    }

    function useCredit(uint food, uint travel, uint stay) public {
        limit = limit - food - travel - stay;
    }

    function resetLimt() public {
        limit = 10000;
    }
}