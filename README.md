# Getting Started

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

This project was inspired by Stephen Grider.

## Run application

In the project directory run:

### `npm install`

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.\
You will also see any lint errors in the console.

# Metamask Plugin Installation

Metamask is a pretty neat browser plugin. It allows an end user to interact with a dAPP on ethethreum network. With metamask, end user do not have to run a ethereum node. Metamask also handle users Ethereum Wallet.

    Install Chrome Browser in your machine
    Go to Chrome Web Store and search for Metamask
    Open Metamask offered by https://metamask.io/
    Click Add to Chrome and confirm by Add Extension
    Now Metamask should be available in your Chrome Extension list

# Create Wallet

Using wallet, end users are allowed to send and receive ethers from dApps.

    Open Metamask and click Get Started
    If you already have a wallet then go to Import Wallet
    To create a new wallet go for Create Wallet
    Agree with Privacy Policy, put password and create the wallet
    Reveal and save the Backup Phrase in a secure place
    Now go to Next Section, select the words according to the phrase
    Now your wallet is All Set Up, You should get your Account Address

# Connect to Rinkeby network and get fake Ether

Tesnet like Rinkeby, does not deal with actual money. To deploy and make transaction in ethereum testnet we will require the fake ether.

    Open the Metamask plugin
    On top-right switch to Rinkeby Network from Main Network
    Go to free ether supplier site. We will follow their twitter instruction.
    Go to Twitter and create a tweet of our Ethereum Account Address
        If your Ethereum Account Address is 0x0000000000000000000000000000000000000000, the just tweet the address
        You can include anything with the address
        It is valid, till the tweet contains the address.
    Open the published tweet in a new page and copy the page link.
    Put the tweet link in the free ether supplier site and from the Give me ether, select a suitable package
    Now in your Metamask, fake ether should appear
    Sometimes it takes a little more time to transaction, so wait and also make sure you Metamask is connected to the Rinkeby network.

# Run and Simulate Contract through Remix Ide

Remix is a online ide to create solidity smart contract. It also has feature to compile, run, deploy and simulate smart contracts.

    Open Remix IDE.
    Select environment Solidity
    Go to File Explorer Tab and create a file Lottery.sol
    Get the Contract Code
    Go to Solidity Compiler Tab and Select
        Compiler Version to 0.8.0
        Language as Solidity
        EVM as Compiler Default
    Now click Compile Lottery.sol
    You can enable auto-compile by check the checkbox Auto Compile
    Go to Deploy And Run Transaction Tab and Deploy the contract in local EVM
    Your contract functionality will be available in Deploy And Run Tracsaction tab, under the Deployed Contract section

# Deploy the contract to Rinkeby Network through Remix Ide

Testnets provide developers a place to kick the smart contract and test before the real assets being involved. These Testnets behave very much like the main-net and does not require actual money(ether). Here we are going to try Rinkeby Testnet.

    Make sure you run the Lottery contract using previous section instructions
    Open Metamask, put the password and make sure, you are connected to the Rinkeby network.
    Go to Deployed And Run Transaction tab and select
        Environment is Injected Web3
        As account, your Metamask wallet address should be selected
    Make sure you have enough ether in your wallet to deploy the contract
    Now click Deploy. This will deploy your contract to the Rinkeby network.
    In the Remix IDE, check Log Section and grab the Transaction Hash and store it.
    Go to Ether Scan and search for the Transaction Hash. You will get the Deployed Contract Address. Also this Contract Address will be required further.

# Verify and Publish Your Contract(Optional)

Everything on Ethereum Network is public, including smart contract byte-code. Byte-code is low level stuff and very difficult to understand. You can publish your solidity source code by verify and publish in ether-scan. If you want more people to interact with your smart contract, you should verify and publish your smart-contract.

    From Ether Scan, search the Transaction Hash or Contract Address and go to Contract Details page
    From Contract Details, go to Contract tab
    Click Verify and Publish, and set
        Compiler Type as Solidity(Single File)
        Compiler Version as 0.8.0
        License Type as Whatever Your's Requirement
    Click Continue and put Contract Code from Remix IDE or Gist
    Click Verify and Publish and you should get the Contract Byte Code and Contract ABI
    Store the Contract Byte Code and Contract ABI for future use

# Clone Repo

This is a react app to interact with our lottery contract.

git clone https://github.com/pikwadrat/Lottery.git
