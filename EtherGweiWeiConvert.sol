// SPDX-License-Identifier: Unlicenced
pragma solidity ^0.8.17;

contract EtherGweiWeiConvert {
    uint  inwei;
    uint  inether;
    uint  ingwei;

    function convert() public payable {
        // Gets the value of the ether sent to the contract in wei
        inwei = msg.value;

        // Converts wei to ether
        inether = inwei / 1 ether;

        // Converts wei to gwei
        ingwei = inwei / 1 gwei;
    }

    function getWei() public view returns(uint) {
        return inwei;
    }

    function getEther() public view returns(uint) {
        return inether;
    }

    function getGwei() public view returns(uint) {
        return ingwei;
    }
}