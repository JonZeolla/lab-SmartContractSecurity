# Force

* Taking a look, there are literally no functions to call.
* Any way we can send value to the contract without the ability of the contract to refuse it?

<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>
  One of the functions available to us within a contract is the ability to destroy a contract. When we call for its destruction, we can point to another contract to transfer the remaining value. And since the transferring contract is destroyed, there is really no way for the receiving contract to refuse it.

  Check out this contract that we need.

  [ForceAttack](attack/07-Force.sol)

  First we need to create this contract on Remix and give it some value. This can be done on the contract creation through Remix, or you can call .sendTransaction, as we programmed a callback function that is payable.

  Once the contract has value, we then need to call the selfdestruct function with the address of our contract.

  `contract.address`

  Execute through Remix...

  Once the block is mined, let's check the balance of our contract.

  `await getBalance(contract.address)`

  </p>
</details>
