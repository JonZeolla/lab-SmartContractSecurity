# Token

* Check how many tokens you have? `await contract.balanceOf(player)`
* How does the logic of the transfer function work?
* What type of variables does it use?

<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>
The problem with this is with the use of an unsigned integer. Doing math on uint's that have the potential to go negative is bad logic. In this case, what would happen if you pass one more token that what we have?

`contract.transfer("0x2336D2D09DF5836E7696C3113729599d2b5EB8a0", 21)`

Once the block has been mined, check to see your balance again.

`await contract.balanceOf(player)`

To get another address, you can either grab a friend's address, or just go onto etherscan and grab an address from the network - really doesn't matter.
  </p>
</details>
