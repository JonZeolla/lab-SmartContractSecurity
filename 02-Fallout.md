# Fallout

Constructors are functions call at the creation of the contract - they are not publicly available to call.

Looking at the contract - there is really no way to set the owner except for the constructor. Let’s look at the publicly available functions that are callable - maybe we can get a hint.

`contract.abi`

<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>
Wait - the constructor is in there? Why? Ah, typo! Let’s call the supposed constructor (just public function actually).

`contract.Fal1out()`

To confirm, let’s check the to see if we are the owner.

`await contract.owner()`
  </p>
</details>
