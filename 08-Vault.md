# Vault

* Constructor sets the password to a `private` variable 
* Does `private` mean that value stored in the blockchain is not visible?

<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>
  
  Ethereum is a public ledger and it is possible to see all contract data sent on-chain. 
  
  Setting the `password` variable to private will only mean that internal calls from the very same contract can access it but that doesn't mean the value stored in that variable is not visible.

  All we need to do here is just use the `web3.eth.getStorageAt()` function to inspect the value stored in the `password` variable.

  Solution:

  ```
  var password = web3.eth.getStorageAt(instance, index);`
  // For Metamask use callback function
  web3.eth.getStorageAt(instance.address, 1, (err,res)=>{password=res});
  ```

  This will return the hex represantation of the password so if we do:

  `web3.toAscii(password);`

  We'll be able to finally see the key string to unlock the vault!

  > "A very strong secret password :)"

  Check out this two Medium articles for a great walkthrough of this problem.

  https://medium.com/coinmonks/ethernaut-vault-problem-b2675393650b

  https://medium.com/coinmonks/how-to-read-private-variables-in-contract-storage-with-truffle-ethernaut-lvl-8-walkthrough-b2382741da9f

  </p>
</details>
