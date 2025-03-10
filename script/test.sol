// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TestGi {
    function run() external {
        // require(tx.origin == address(0x01));
        selfdestruct(payable(tx.origin));
    }

    function run2() external {
        payable(address(tx.origin)).call{value: address(this).balance}("");
    }

    function a() external {
        // require(msg.sender == address(0x0a));
        payable(address(msg.sender)).delegatecall("");
    }
}
