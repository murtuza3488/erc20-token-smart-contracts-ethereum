const Seaflux_Token = artifacts.require("Seaflux_Token");

module.exports = function (deployer) {
  deployer.deploy(Seaflux_Token);
};
