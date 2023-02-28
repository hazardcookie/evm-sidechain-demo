// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Example.sol";

contract ExampleTest is Test {
    Example public example;

    function setUp() public {
        example = new Example();
        example.setNumber(0);
    }

    function testIncrement() public {
        example.increment();
        assertEq(example.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        example.setNumber(x);
        assertEq(example.number(), x);
    }
}
