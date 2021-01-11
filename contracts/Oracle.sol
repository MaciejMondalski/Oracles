// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Oracle {
	struct Data {
		uint date;
		uint payload;
	}
	address public admin;
	mapping(address => bool) public reporters;
	mapping(bytes32 => Data) public data;

	constructor(address _admin) {
		admin = _admin;
	}
 
}