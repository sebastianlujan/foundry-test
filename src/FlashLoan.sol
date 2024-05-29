// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// There ain't such a think as a free lunch
// two doritos after..
contract FreeFoo {
    address public owner;
    IERC20 public dai;
    
    constructor(address _dai) {
        owner = msg.sender;
        dai = IERC20(_dai);
    }

    // "this is not the way to go, but i want to code something anyways"
    // the way to go is Ownable for ownership
    function flooLoan(uint amount) external {
        require(msg.sender == owner, "Only owner");

        uint balanceBefore = dai.balanceOf(address(this));
        require(msg.sender == owner);

        require(balanceBefore >= amount, "Not enough DAI");
        // Magic foo money happens here

        uint balanceAfter = dai.balanceOf(address(this));
        require(balanceAfter >= balanceBefore, "Foo loan repayment failed");
    }
}