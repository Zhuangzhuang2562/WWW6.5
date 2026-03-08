// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Pollstation{

    string[]public candidateNames;
    mapping(string => uint256) voteCount;

    function addCandidateNames(string memory _candidatenames) public{
        candidateNames.push(_candidatenames);
        voteCount[_candidatenames] = 0;
    }

    function getcandidateNames() public view returns (string[] memory){
        return candidateNames;
    }

    function vote(string memory _candidatenames)public{
        voteCount[_candidatenames] +=1;
    }

    function getvote(string memory _candidatenames) public view returns(uint256){
        return voteCount[_candidatenames];
    }
}
