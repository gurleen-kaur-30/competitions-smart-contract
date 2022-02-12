const main = async () => {
    const [owner, randomPerson] = await hre.ethers.getSigners();
    const compContractFactory = await hre.ethers.getContractFactory("Competitions");
    const compContract = await compContractFactory.deploy();
    await compContract.deployed();
  
    console.log("Contract deployed to:", compContract.address);
    console.log("Contract deployed by:", owner.address);
    
    // waveCount = await compContract.getTotalWaves();
  
    // let waveTxn = await compContract.wave();
    // await waveTxn.wait();

    // console.log(owner.balance)

      provider = ethers.provider;
      balance = await provider.getBalance(compContract.address);
      console.log("balance of randomPerson before ", balance.toString());

      balance = await provider.getBalance(owner.address);
      console.log("balanceof owner before joining", balance.toString());

      balance = await provider.getBalance(compContract.address);
      console.log("balance of contract before", balance.toString());
    // const ownerBalance = await compContract.balanceOf(owner.address);
    // console.log(compContract.balanceOf(compContract.address));
    // console.log(compContract.balanceOf(owner.address));
    // console.log(owner.balance);

    // joinTxn = await compContract.connect(randomPerson).joinContest();
    // await joinTxn.wait();

    // console.log(compContract.balance);
    // console.log(randomPerson.balance);
    // console.log(owner.balance);
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