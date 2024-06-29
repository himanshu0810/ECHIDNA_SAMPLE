// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {Test, console} from "forge-std/Test.sol";
import {Token} from "../src/token.sol";

//test the functionality:
//no user can have balance greater than 1000
contract TestToken is Token {

    constructor() {

    }

    function echidna_balance_under_1000() public view returns(bool) {
        return balances[msg.sender] <= 1000;
    }
}
