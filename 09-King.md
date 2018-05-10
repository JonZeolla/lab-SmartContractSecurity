# King

* How much do we have to pay to get the king seat? `await getBalance(contract.address)`
* Once we get the king seat, how do we maintain it?
* Any way to make the callback function fail?


<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>
  Here is an excellent write up on the King attack.

  https://medium.com/coinmonks/ethernaut-king-problem-2ccec1ee4190

  `await contract.king()`

  Not the King - boo!

  Now if we send the contract a little over 1 ether, we could take the King seat with the logic.

  `contract.sendTransaction({value: web3.toWei(1, "ether") + 1})` YOU DON'T HAVE TO RUN THIS - just an example.


  Unfortunately we won't be able to hold it, as it will revert when we submit the instance.

  One of the interesting things to notice is that it transfers the funds to the current king before reassigning the king. What would happen if that failed to execute? Well the call would throw and exit right there.

  So if we could have a way to set the king to another contract, and have no way to accept funds back, that would fail the call.

  Let's take a look at this contract.

  [KingAttack](attack/09-King.sol)

  Loading this up in Remix, we will be able to run this against are current contract.

  Point to the contract in the doYourThing function -> `contract.address`
  Set the Value to 10000000000000000002 wei - essentially just a little over an ether

  Once you run this and the block is mined, check the king spot to see if it is your contract on Remix.

  `await contract.king()`

  If it worked, you should be able to submit your instance to validate. When it tries to retake the contract, it should fail because your contract has no way of accepting funds back.

  </p>
</details>
