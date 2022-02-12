//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Competitions {
    struct Contest {
        uint256 contestId;
        address createdBy;
        Entry[5] entries;
    }

    struct Entry {
        uint256 entryId;
        // entry hash ipfs
        uint256 votes;
        Voter[] voters;
    }

    struct Voter {
        uint256 voterAddress;
        // can add more fields
    }

    constructor() {
        console.log("constructor");
    }

    function createContest() public {
        //self closing contest
    }

    function joinContest(string memory contestName) public {
        // stake min tokens for joining
    }

    function uploadEntry() public {
        // check if staked
        // add entry  - how? filecoin, stakos?
    }

    function vote(uint256 contestId, uint256 entryId) public {
        // transaction fees for voting ( txn to contract )
        // + 1
    }

    function findWinner(uint256 contestId) public returns (uint256) {
        //
        // return winners and voters wallet address
    }

    function distributePrizes() public {
        // voters will get prize? how much?
        // pirze winner ?
    }

    function getAllContests() public returns (Contest[] memory) {}

    // do we need separate contract for stroing meta data or on contract itself?
    // storing entries on filecoin or ifps?
}
