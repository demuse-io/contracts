// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Presale } from "./PreSale.sol";

contract Voting {
    address voter = msg.sender;
    // address presale;
    address artistPresaleAddress;
    uint256 tokenId;

    constructor(uint256 _tokenId) {
        artistPresaleAddress = msg.sender;
        tokenId = _tokenId;
    }

    Presale presale;
    
    struct Proposal {
        string name;
        string ipfsSong1;
        string ipfsSong2;
        uint256 voteCountSong1;
        uint256 voteCountSong2;
        bool open;
    }

    Proposal[] public proposals;

    mapping(uint => mapping(address => bool)) public alreadyVoted;

    function createProposal(string memory name, string memory ipfs_song1, string memory ipfs_song2) public {
        require(msg.sender == Presale(artistPresaleAddress).ownerOf(tokenId));

        Proposal memory lastProposal = proposals[proposals.length];
        require(lastProposal.open == false, "Limit: one open proposal at a time");

        proposals.push(Proposal({
            name: name,
            ipfsSong1: ipfs_song1,
            ipfsSong2: ipfs_song2,
            voteCountSong1: 0,
            voteCountSong2: 0,
            open: true
        }));
    }

    function vote(string memory ipfsVote) public {
        voter = msg.sender;

        require(voter != artistPresaleAddress, "Creator of the propsal can't vote");
        
        uint256 nrVotes = presale.getSharesPerTokenHolder(tokenId, voter);
        require(nrVotes > 0, "Only holders can vote");

        require(alreadyVoted[proposals.length][voter] == false, "Already voted");
        alreadyVoted[proposals.length][voter] = true;

        if (keccak256(abi.encodePacked(ipfsVote)) == keccak256(abi.encodePacked(proposals[proposals.length].ipfsSong1))) {
            proposals[proposals.length].voteCountSong1++;
        }
        else if (keccak256(abi.encodePacked(ipfsVote)) == keccak256(abi.encodePacked(proposals[proposals.length].ipfsSong2))) {
            proposals[proposals.length].voteCountSong2++;
        }
    }

    function closeProposal() public returns(string memory winner) {
        require(msg.sender == artistPresaleAddress, "Only artist can close the voting");
        proposals[proposals.length].open = false;

        if (proposals[proposals.length].voteCountSong1 > proposals[proposals.length].voteCountSong2) {
            winner = proposals[proposals.length].ipfsSong1;
        } else {
            winner = proposals[proposals.length].ipfsSong2;
        }

        return winner;
    }
}
