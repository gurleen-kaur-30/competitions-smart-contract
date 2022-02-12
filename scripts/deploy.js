const main = async () => {  
    const Competitions = await hre.ethers.getContractFactory("Competitions");
    const competitions = await Competitions.deploy({
        value: hre.ethers.utils.parseEther("0.1"),
    });

    await competitions.deployed();

    console.log("Greeter deployed to:", competitions.address);
  };
  
  const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.log(error);
      process.exit(1);
    }
  };
  
  runMain();