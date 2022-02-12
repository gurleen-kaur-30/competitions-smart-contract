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

    uint256 stakeAmount = 0.0001 ether; 

    struct Voter {
        uint256 voterAddress;
        // can add more fields
    }

    constructor() payable{
        console.log("constructor");
    }

    function createContest() public {
        //self closing contest
    }

    function joinContest() external payable{
        // stake min tokens for joining
        console.log(msg.sender);
        require(
        stakeAmount <= msg.sender.balance,
        "Trying to withdraw more money than the joinee has."
        );
        // (bool success, ) = (address(this)).call{value: stakeAmount}("");
        // payable(address(this)).transfer(stakeAmount); 
        // require(success, "Failed to send money to contract.");
        // console.log(address(this).balance);
        
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

    function getAllContests() public returns (Contest[] memory) {
        // to view all contests on frontend.
    }

    // do we need separate contract for stroing meta data or on contract itself?
    // storing entries on filecoin or ifps?
}
