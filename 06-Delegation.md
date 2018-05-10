# Delegation

* First off, there are two contracts in here - which one do we need to be the owner to?
* What does the delegatecall do?
* How do you call pwn with delegatecall?

<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>

The solution is essentially to call the pwn() function under the execution of the Delegation contract. The risk is that delegate contracts have complete access to your current contract that you call it from.

To sucessfully execute this, we first need to figure out the sha3 address of the function pwn. Luckily web3 has a sha3 function.

`web3.sha3("pwn()")`

By passing the name of the function, with arguments if necessary, you will get the full sha3 of the function.

Solidity only uses the first four bytes of the hash - so cutting it up would be `0xdd365b8b`

Now if we call the fallback function with the parameter of the pwn function, it will execute under the current contract - similar to something like inherited classes.

contract.sendTransaction({data: "0xdd365b8b"})

We should now be the owner if executed correctly.

`await contract.owner()`

  </p>
</details>
