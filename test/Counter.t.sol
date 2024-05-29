// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";


import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    // Simillar to before each in Mocha
    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }


	/**
	 * @notice Test fuzz_ set number, a public state-modifying function.
	 * @param x The X (uint256).
	 * @custom:signature testFuzz_SetNumber(uint256)
	 * @custom:selector 0x5c7f60d7
	 */
    function testFuzz_SetNumber(uint256 x) public {
        assertEq(counter.number(), x);
    }
}