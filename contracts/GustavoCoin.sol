pragma solidity ^0.4.13;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract GustavoCoin is MintableToken {
	string public name = "Gustavo Coin";
	string public symbol = "GUS";
	uint265 public decimals = 18;
}