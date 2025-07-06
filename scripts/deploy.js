const hre = require("hardhat");

async function main() {
  const members = [
    "0x70997970C51812dc3A010C7d01b50e0d17dc79C8",
    "0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC"
  ]; 

  const SafeVault = await hre.ethers.getContractFactory("SafeVault");
  const vault = await SafeVault.deploy(members);
  await vault.waitForDeployment();

  const deployedAddress = await vault.getAddress();
  console.log(`✅ SafeVault deployed to: ${deployedAddress}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
