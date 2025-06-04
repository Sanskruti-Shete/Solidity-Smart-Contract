// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VoterSys {
    struct Voter {
        string name;
        bool voted;
    }
    enum Status {
        NotStarted,
        Voting,
        Ended
    }
    Status public currStatus;
    Voter public v1;

    function createVoter(string memory _name) public {
        v1 = Voter(_name, false);
    }

    function startVoting() public {
        currStatus = Status.Voting;
    }
}
