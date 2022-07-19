//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

import "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;

    // how to convert USD to value?  ==>> Chainlink 
    uint256 public constant MINIMUM_USD = 50 * 1e18;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    address public immutable i_owner;

    constructor(){
        i_owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == i_owner,"Sender is not owner!");
        _;
    }

    function fund() public payable{
        require(msg.value.getConversionRate() >= MINIMUM_USD,"Didn't send enough!"); // 1 * 10 ** 18
        // 18 decimals
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public onlyOwner {
        
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        } 
        //reset the array
        funders = new address[](0);
        //actually withdraw the funds
        (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");

        require(callSuccess, "Call failed");
    }

    // what happens if someone send this contract ETH without calling the fund function 
    receive() external payable {
        fund();
    }

    fallback() external payable {
        fund();
    }
}