# Telephone

* What funcion transfers ownership?
* What is the difference between `txt.origin` and `msg.sender`?

[Remix](https://remix.ethereum.org/)

<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>
To execute this, you need to make another contract just to call this. The key to understanding the issue here is the difference between txt.origin and msg.sender. The tx.origin will always refer to the original address that made the original transaction (even if the contract you call, calls another, tx.origin will always refer to your address), while msg.sender refers to the address of the last caller to the current contract evaluating the transaction.

Check out this contract for the solution.

[TelephoneAttack](attack/04-Telephone.sol)

For us to properly run this, we need the contract address and our player address.

`contract.address`
`player`

Remember to put the addressees in double quotes in the argument fields in Remix.
  </p>
</details>
