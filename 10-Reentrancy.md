# Reentrance


<details>
  <summary>EXPAND FOR SOLUTION</summary>
  <p>

  The trick with this contract is that you are essentially setting up another contract to recursively call the withdraw function.

  Couple of things to setup though before we can pull this off. First, lets create a our malicious contract.

  [ReentranceAttack](attack/10-Reentrance.sol)

  To create the contract, you need to pass it the victim contract.

  `contract.address`

  Ensure that when you create it, you add one wei to it for it to have value. You can check it with the following code.

  `await getBalance("YOURCONTRACTADDRESS")`

  Now you can execute the `attack_1_causeOverflow` function.

  MAKE SURE YOU GIVE IT ENOUGH GAS TO RUN!!!!

  I recommend giving the gas limit around 30000000 for it to run successfully.



  If it executes successfully, you should see the **Internal Transactions** on etherscan should something like below.
---
   call_0
   call_1_0
   call_1_0_0_0
   call_1_0_0_0_0_0
   call_1_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0
   call_1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0
---


  Now execute the `attack_2_deplete` to finish the job.

  To be successful, you need to both be up one ether in your contract and liquidate the victim contract.

  `await getBalance("YOURCONTRACTADDRESS")` // Should be up one
  `await getBalance(contract.address)`  // Should be zero

  Submit and done! You just executed something that netted and attacker $50 mil with the DAO. :)

  </p>
</details>
