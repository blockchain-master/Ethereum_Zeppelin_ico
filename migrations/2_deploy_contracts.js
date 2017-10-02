var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");
var GustavoCoinCrowdsale = artifacts.require("./GustavoCoinCrowdsale.sol");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);

  const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1;
  const endTime = startTime + (86400 * 20); // 20 days
  const rate = new web3.BigNumber(1000);
  const wallet = accounts[0];

  deployer.deploy(GustavoCoinCrowdsale, startTime, endTime, rate, wallet)
};
