// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract SimpleStorageCorrect {
    uint256 private data;

    function store(uint256 x) public {
        data = x;
    }

    function retrieve() public view returns (uint256) {
        return data;
    }
}
