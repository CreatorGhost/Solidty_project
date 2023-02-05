
const { expect } = require('chai');
const { ethers } = require('hardhat');

describe("Counter", ()=>
    {
        let counter;

        it("Testing count",async()=>
        {
            const Counter = await ethers.getContractFactory('Counter');
            counter = await Counter.deploy("Aditya",7);
            count = await counter.count();
            expect (count).to.equal(7);
        })
    }   
)