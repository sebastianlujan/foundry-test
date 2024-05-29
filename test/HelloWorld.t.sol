// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloTest is Test {
    HelloWorld public hello;

    // Simillar to before each in Mocha
    function setUp() public {
        hello = new HelloWorld();
    }
}