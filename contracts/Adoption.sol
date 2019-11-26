pragma solidity ^0.4.17;

//Class called adoption, in solidity classes are contracts
contract Adoption {
    //Declaration of state variable
    //Address array that takes in 5 addresses, fixed length
    //State variable that is defined as public will have a getter function automagically defined
    address[5] public adopters;
    
    //Setter function for address(user) to adopt pet and change state variable
    //public, any external address can call
    //returns and int to indicate success
    //validation 
    //msg.sender equals the address that calls the function, and is set to val of pedId index
    //returns pedId that user supplies
    //returns one value
    function adopt(uint petId)
    public
    returns(uint)
    {
        require(petId >= 0 && petId <= 4);
        adopters[petId] = msg.sender;
        return petId;
    }
    
    //Getter function to see which pets are adopted
    //Check the state of adopters array
    //Returns all values with one functions call
    //Public callable from any address
    //View function, does not modify the state of the contract, just reads and returns value
    //Since no state change, zero gas, free to call
    function getAdopters() 
    public 
    view
    returns(address[5])
    {
        return adopters;
    }
}

/*
In remix, blue buttons are free
pink buttons cause transactions
try adding and event to adopt
try modifying adoption to throw an exception if pet is already adopted
*/

/*
5 addresses where the index of array corresponds to specific pet
value at each index corresponds to the ped adopter
element 1 with address of ox4b etc
Initially the indexes value is zero, defualt initialization equals zero
[0,0,0,0,0]
five pets that have not been adopted
*/

/*

*/