// SPDX-License-Identifier: UNLICENSED
 
pragma solidity ^0.8.0;
 
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract ElonNFT is ERC721URIStorage {
   using Counters for Counters.Counter; //keep count of the number of NFTs minted
   Counters.Counter private _tokenIds;
 
   constructor() ERC721("ElonMusk", "ELON") {}

   //anyone can call this function once it is deployed on Rinkeby 
   function mintNFT() 
       public 
       returns (uint256)
       {
           _tokenIds.increment();
           uint256 newItemId = _tokenIds.current();
           _mint(msg.sender, newItemId); //mint NFT to account of minter
           _setTokenURI(newItemId, "https://jsonkeeper.com/b/JJJS");
           console.log("The NFT ID %s has been minted to %s", newItemId, msg.sender);
           return newItemId;
       }
}