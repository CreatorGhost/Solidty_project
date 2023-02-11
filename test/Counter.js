
const { expect } = require('chai');
const { ethers } = require('hardhat');



describe ("Counter",()=>{
    let counter;

    beforeEach(async()=>{
            //setting connection with ether to our smart contact
            const Counter =await ethers.getContractFactory("Counter")
            // Deploying our smart contract 
            counter = await Counter.deploy("Adi",1);
    })
    describe("Numeric checks",()=>{
        it("Cheking for count",async()=>{
            count =  await counter.count();
            expect (count).equal(1)
        })
        it("Increment Value",async()=>{
            let inc = await counter.increment()
            await inc.wait()
            expect (await counter.count()).equal(2)
        })
        it("Decrement Value",async()=>{
            //setting up the trasncation by calling a funtion
            let transaction = await counter.decrement()
            //waiting for the transaction to run
            await transaction.wait()
            // now cheking 
            expect(await counter.count()).equal(0)
            expect(counter.decrement()).to.be.reverted
        })
    })
    describe("Checking Strings",()=>{
        it("Checking for name",async ()=>{
        _name = await counter.name();
        expect (_name).equal("Adi")
    })
    it("Check for the name using name funtion",async()=>{
        expect(await counter.getName()).to.equal("Adi")
    })
    it("Checks by setting a new name",async()=>{
        let transaction = await counter.setName("Goku");
        await transaction.wait()
        expect (await counter.name()).equal("Goku")
    })
})

})








