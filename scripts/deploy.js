const hre = require("hardhat");
 
async function main() {
  const ElonNFT = await hre.ethers.getContractFactory("ElonNFT");
  const elon = await ElonNFT.deploy();
  await elon.deployed(); 
  console.log("ElonNFT deployed to:", elon.address);
}
 
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });