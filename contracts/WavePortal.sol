// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] sendersAddresses;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        sendersAddresses.push(address(msg.sender));
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getAllSenders() public view returns (address[] memory) {
      console.log("Here is the list of all the sendersAddresses:");

      for (uint i = 0; i < sendersAddresses.length; i++) {
        console.log(sendersAddresses[i]);
      }

      console.log("End of list!");


      return sendersAddresses;
    }
}
