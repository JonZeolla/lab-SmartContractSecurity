# Coin Flip

* How does the "side" of the coin?
* Can you predetermine the coin flip before guessing?

For this exercise you need to create another contract to interact with this. I recommend using Remix.

https://remix.ethereum.org/

<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>
Check out this Medium article for a great walkthrough of this problem.

https://medium.com/coinmonks/ethernaut-coin-flip-problem-4f326df872cb

Essentially the contract is basing the flip on the hash of the last block. So if we create a contract to calculate the flip, much like the current contract, then we can submit out guess and be RIGHT!

Check out this contract for the solution.

[CoinFlipAttack](attack/03-CoinFlip.sol)

For us to properly run this, we need the contract address.

`contract.address`

Unfortunately with the following tidbit of code, we can only guess once per mined block. So this solution takes a bit longer to achieve.

```
if (lastHash == blockValue) {
  revert();
}
```
  </p>
</details>
