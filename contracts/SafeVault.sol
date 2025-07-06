// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SafeVault {
    address public owner;
    address[] public members;

    struct Expense {
        uint id;
        address paidBy;
        uint amount;
        string description;
        uint approvals;
        bool settled;
        mapping(address => bool) hasApproved;
    }

    uint public expenseCount = 0;
    mapping(uint => Expense) public expenses;

    constructor(address[] memory _members) {
        owner = msg.sender;
        members = _members;
    }

    modifier onlyMember() {
        bool isMember = false;
        for (uint i = 0; i < members.length; i++) {
            if (msg.sender == members[i]) {
                isMember = true;
                break;
            }
        }
        require(isMember, "Not a vault member");
        _;
    }

    function addExpense(
        uint _amount,
        string memory _description
    ) public onlyMember {
        Expense storage e = expenses[expenseCount];
        e.id = expenseCount;
        e.paidBy = msg.sender;
        e.amount = _amount;
        e.description = _description;
        e.approvals = 0;
        e.settled = false;

        expenseCount++;
    }

    function approveExpense(uint _id) public onlyMember {
        Expense storage e = expenses[_id];
        require(!e.settled, "Expense already settled");
        require(!e.hasApproved[msg.sender], "Already approved");

        e.hasApproved[msg.sender] = true;
        e.approvals++;

        if (e.approvals == members.length) {
            e.settled = true;
        }
    }

    function getMembers() public view returns (address[] memory) {
        return members;
    }

    function getExpense(
        uint _id
    )
        public
        view
        returns (
            uint id,
            address paidBy,
            uint amount,
            string memory description,
            uint approvals,
            bool settled
        )
    {
        Expense storage e = expenses[_id];
        return (
            e.id,
            e.paidBy,
            e.amount,
            e.description,
            e.approvals,
            e.settled
        );
    }
}
