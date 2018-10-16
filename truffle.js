var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = 'YOUR MNEMONIC';

    module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 7545,
      network_id: "*"
    }
  }
};
