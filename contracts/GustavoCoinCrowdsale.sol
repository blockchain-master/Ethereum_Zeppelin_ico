pragma solidity ^0.4.13;

import './GustavoCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';

contract GustavoCoinCrowdsale is Crowdsale {
	function GustavoCoinCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet) Crowdsale(_startTime, _endTime, _rate, _wallet) {

	}

	function createTokenContract() internal returns (MintableToken) {
		return new GustavoCoin();
	}
}