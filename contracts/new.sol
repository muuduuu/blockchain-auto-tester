pragma solidity ^0.8.0;

contract MyToken{
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) public allowed;

    function transfer(address to,uint value) public returns (bool) {
        require(balances[msg.sender] >= value, "Insufficient balance");
        balances[msg.sender] -= value;
        balances[to] += value;
        return true;
        }

    function approve(address spender, uint value) public returns (bool) {
        allowed[msg.sender][spender] = value;
        return true;

    }


}