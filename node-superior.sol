pragma solidity ^0.8.4;

contract LevelAndSuperior {
    

    mapping(address => address) public UserSuperior;
    mapping(address => bool)    public UserHasSetSuperior;
    address                     public Dev;
    
  
    event SetUserSuperior(address superior);

    constructor(){

        Dev = msg.sender;
    }
  
    
    function setUserSuperior(address superior) external{
        require(!UserHasSetSuperior[msg.sender],"You have set up a superior!");
        if (superior != Dev){
            require(UserHasSetSuperior[superior] == true,"this superior no superior");
        }
        UserSuperior[msg.sender] = superior;
        UserHasSetSuperior[msg.sender] = true;
        emit SetUserSuperior(superior);
    }


}