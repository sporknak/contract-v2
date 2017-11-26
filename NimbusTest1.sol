pragma solidity ^0.4.18;

import './ERC20Basic.sol';
import './StandardToken.sol';


contract NimbusTest1 is StandardToken {
    using SafeMath for uint256;

    string public name = "Nimbus Token Test 1";
    string public symbol = "NT1";
    uint256 public decimals = 18;

    uint256 public totalSupply = 100000000 * (10 ** decimals);

    address public fundsWallet;

    function NimbusTest1(address _fundsWallet) public {
        fundsWallet = _fundsWallet;

        // initially assign all tokens to the fundsWallet
        balances[fundsWallet] = totalSupply;
        Transfer(0x0, fundsWallet, totalSupply);
    }
}
