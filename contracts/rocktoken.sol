pragma solidity ^0.4.24;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
 
contract rocktoken is StandardToken {
    string public name = "rock1"; 
    string public symbol = "rock1"; //Currency Symbol
    uint public decimals = 18; // 1ETH is start from 18digit (소수점 자리수) 
    uint public totalSupply  = 210000000 * (10 ** decimals); 
    string public version = 'v0.1';
 
    /* 아래는 ICO Edition */
    uint256 public unitsOneEthCanBuy;     // 1ETH 당 토큰 배분비율
    uint256 public totalEthInWei;         // ICO ETH SoftCap .  
    address public fundsWallet;           // ICO ETH 모금지갑 .
    //construct
    function rocktoken() public {
        balances[msg.sender] = totalSupply;
    }
}