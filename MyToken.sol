// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    // Public variables to store the details about the coin
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply;

    // Mapping to store the balances of addresses
    mapping(address => uint256) public balances;

    // Mint function to increase the total supply and balance of the specified address
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to decrease the total supply and balance of the specified address
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
