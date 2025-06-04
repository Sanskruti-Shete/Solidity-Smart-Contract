// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockchainProperties {
    address public owner;

    constructor() {
        owner = msg.sender; // msg.sender: Deployer of the contract
    }

    function getBlockProperties(uint _blockNumber) external view returns (
        bytes32 hash,
        uint chainId,
        address coinbase,
        uint gaslimit,
        uint blockNumber,
        uint timestamp
    ) {
        // blockhash returns the hash of the block if within the last 256 blocks
        hash = blockhash(_blockNumber);
        
        // block.chainid: ID of the current chain (useful for replay protection)
        chainId = block.chainid;
        
        // block.coinbase: address of the miner
        coinbase = block.coinbase;
        
        // block.gaslimit: gas limit of the current block
        gaslimit = block.gaslimit;
        
        // block.number: current block number
        blockNumber = block.number;
        
        // block.timestamp: timestamp of the block (seconds since Unix epoch)
        timestamp = block.timestamp;
    }

    function getTransactionProperties() external payable returns (
        address sender,
        bytes4 sig,
        uint value,
        uint gasprice,
        address origin
    ) {
        // msg.sender: address of the sender of this message
        sender = msg.sender;
        
        // msg.sig: first 4 bytes of the calldata (function identifier)
        sig = msg.sig;
        
        // msg.value: amount of wei sent with the call
        value = msg.value;
        
        // tx.gasprice: gas price of the transaction
        gasprice = tx.gasprice;
        
        // tx.origin: address that started the transaction (even if via multiple contracts)
        origin = tx.origin;
    }
}
