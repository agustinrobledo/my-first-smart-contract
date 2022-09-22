// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    UserInfo[] userWaves;
    struct UserInfo {
        uint id;
        address addressInfo;
    }
    uint256 totalWaves;
    
    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        userWaves.push(UserInfo({id: totalWaves,  addressInfo: msg.sender}));
        console.log("%s has waved!", msg.sender);
    }

    function getUserWaves() public view returns (UserInfo[] memory){
        return userWaves;
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}