pragma solidity ^0.4.18;

import './NimbusTest1.sol';


contract Factory {

    function createContract(address _fundsWallet) public returns(address created)
    {
        return new NimbusTest1(_fundsWallet);
    }
}
