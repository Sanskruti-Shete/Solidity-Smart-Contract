// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract VisibilityExample {
    string public publicVar = "Public"; // Accessible anywhere
    string private privateVar = "Private"; // Only inside this contract
 string internal internalVar = "Internal"; // This + child contracts
 string external externalVar = "External"; // Cannot be used inside
 function getPrivate() private view returns (string memory) {
 return privateVar;
 }
 function getInternal() internal view returns (string memory) {
 return internalVar;
 }
 function getPublic() public view returns (string memory) {
 return publicVar;
 }
 function callExternal() public view returns (string memory) {
 return this.getExternal(); // Must use `this` to call external
 }
 function getExternal() external view returns (string memory) {
 return externalVar;
 }
}