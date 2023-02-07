
const { expect } = require('chai');
const { ethers } = require('hardhat');



describe ("Counter",()=>{
    let counter;

    beforeEach(async()=>{
            //setting connection with ether to our smart contact
            const Counter =await ethers.getContractFactory("Counter")
            // Deploying our smart contract 
            counter = await Counter.deploy("Adi",23);
    })

    it("Cheking for count",async()=>{
        
        count =  await counter.count();
        expect (count).equal(23)
    })
    it("Checking for name",async ()=>{
        //const Counter = await ethers.getContractFactory("Counter")
        _name = await counter.name();
        expect (_name).equal("Adi")
    })
})








