// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import './IntOracle.sol';

contract Consumer {
	IntOracle public oracle;

	constructor(address _oracle) {
		oracle = IntOracle(_oracle);
	}

	function foo() external {
		bytes32 key = keccak256(abi.encodePacked('BTC/USD'));

		(bool result, uint timestamp, uint data) = oracle.getData(key);
		require(result == true, 'could not get the price');
		require(timestamp >= block.timestamp - 2 minutes, 'price too old');
		// do something with price
	}
}
