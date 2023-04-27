# Tokenomics and Crowdsale

## Overview

A Study Session introducing concepts of Solidity and Advanced Solidity. Hands on example of Tokenomics and Crowdsale by
deploying smart contracts on Remix and linking with Ganache via MetaMask using Injected Web3 environment.

## Learning Objectives

* Solidity
* Smart Contracts
* Advanced Solidity
* Tokenomics
* Crowdsale

- - -

## 0. Prework

<details>
  <summary>
  <strong>Installations</strong>
  </summary>

* **Metamask**: MetaMask is a digital wallet for the Ethereum blockchain. To install MetaMask in your web browser,
  follow the instructions on the [MetaMask Download page](https://metamask.io/download). Please create a wallet on
  Metamask by following the onscreen instructions.
* **Ganache**: With the Ganache tool, you can quickly set up a local blockchain. You can then use this blockchain to
  test and develop smart contracts. To download and install this tool on your local machine, follow the instructions on
  the [Ganache download page](https://www.trufflesuite.com/ganache).

</details>

<details>
  <summary>
  <strong>Reading</strong>
  </summary>

* **Block Chain**: [Wikipedia](https://en.wikipedia.org/wiki/Blockchain), [Investopedia](https://www.investopedia.com/terms/b/blockchain.asp), [AWS](https://aws.amazon.com/what-is/blockchain/)
* **Smart Contracts**: [Wikipedia](https://en.wikipedia.org/wiki/Smart_contract), [Investopedia](https://www.investopedia.com/terms/s/smart-contracts.asp), [Ethereum](https://ethereum.org/en/developers/docs/smart-contracts/)

</details>


- - -

## 1. Introduction to Solidity

| Activity Time:       0:10 | Elapsed Time:      0:10 |
|---------------------------|-------------------------|

<details>
  <summary>
  <strong> 1.1 Introduction to Blockchain (5 min)</strong>
  </summary>
</details>

<details>
  <summary>
  <strong> 1.2 Introduction to Ethereum and Solidity (5 min)</strong>
  </summary>
</details>

- - -

## 2. Smart Contracts

| Activity Time:       0:25 | Elapsed Time:      0:35 |
|---------------------------|-------------------------|

<details>
  <summary>
    <strong> 2.1 Introduction to Remix (5 min)</strong>
  </summary>

* [Remix IDE](https://remix.ethereum.org/)

* We use an IDE for Solidity, just like we use an IDE for Python. But instead of using Visual Studio Code or JupyterLab,
  we’ll use the Remix IDE.

* The Remix IDE is an open-source application for developing, deploying, and administering smart contracts that run on
  Ethereum-based blockchains. We can use this IDE for the entire development cycle of smart contracts and as a
  playground for teaching and learning Ethereum.

* The Remix IDE is available in both web and desktop versions For better compatibility among operating systems. In our
  class, we’ll use the web version of the Remix IDE.

* Because Remix is an open-source application, the Remix IDE is under constant development, and its user interface often
  gets updated. So, the interface in the current live version might vary from the slides that appear in this lesson.

</details>

<details>
  <summary>
    <strong> 2.2 My First Contract (5 min)</strong>
  </summary>

**Starter**: [CustomerAccount](Activities/2_2_My_First_Contract/Unsolved/CustomerAccount.sol)

**Solution**: [CustomerAccount](Activities/2_2_My_First_Contract/Solved/CustomerAccount.sol)

We will create our first smart contract in Solidity

  ```solidity
  pragma solidity ^0.5.0;

// create contract named CustomerAccount with a string named message
contract CustomerAccount {
    string message = "Send me monies!";
}
  ```

</details>

<details>
<summary>
<strong>2.3 Solidity Data Types (5 min)</strong>
</summary>

**Starter**: [CustomerAccount](Activities/2_3_Solidity_Data_Types/Unsolved/CustomerAccount.sol)

**Solution**: [CustomerAccount](Activities/2_3_Solidity_Data_Types/Solved/CustomerAccount.sol)

* Solidity Data Types

![Solidity Data Types](/images/1-2-solidity-data-types.png)

* Note the following about the Solidity data types:

    * A variable of type `string` stores a text value.

    * A variable of type `uint` stores a positive number. The keyword `uint` stands for “unsigned integer.”

    * A variable of type `int` stores a number. This type of variable can store a positive or a negative integer.

    * A variable of type `address` stores an Ethereum address. This is a special Solidity data type for storing an
      Ethereum address in a way that’s computationally more efficient than storing a string.

    * A variable of type `bool` stores a Boolean value&mdash;that is, `true` or `false`.

* We will add data members to the `CustomerContract`

    * The `owner` variable: Holds the Ethereum address of the main customer (for example, 0xaaaaaaaaaaaaaaaaa).

    * The `isNewAccount` variable: Represents whether the account is new (that is, `true` or `false`).

    * The `accountBalance` variable: Holds the account balance (for example, 10000).

    * The `customerFirstName` variable: Holds the first name of the customer (for example, "John").

    * The `customerLastName` variable: Holds the last name of the customer (for example, "Doe").

  The following code shows these variables:

  ```solidity
      address owner = 0xc3879B456DAA348a16B6524CBC558d2CC984722c;
      bool isNewAccount = true;
      uint accountBalance = 10000;
      string customerFirstName = "John";
      string customerLastName = "Doe";
  ```

</details>

<details>
<summary>
<strong> 2.4 Smart Functions (5 min)</strong>
</summary>

**Starter**: [CustomerAccount](Activities/2_4_Smart_Functions/Unsolved/CustomerAccount.sol)

**Solution**: [CustomerAccount](Activities/2_4_Smart_Functions/Solved/CustomerAccount.sol)

* We are going to create our functions in `CustomerAccount`

    * A function `getInfo` which would
      the `owner`, `isNewAccount`, `accountBalance`, `customerFirstName`, `customerLastName`

    * A function `setInfo` which can update
      the `owner`, `isNewAccount`, `accountBalance`, `customerFirstName`, `customerLastName`

* We use the `function` keyword to define functions in Solidity.

* The `memory` keyword

    * This keyword tells the Solidity compiler to temporarily store the value of the string argument in memory.

    * The `memory` keyword is available only for the function arguments of a contract.

    * The EVM clears this `memory` area between function calls. So, it’s less expensive to use than storage.

    * The contract variables all reside in `storage` and that temporary values reside in memory. The EVM clears this
      memory area between function calls. So, it’s less expensive to use than `storage`.

    * The third storage solution for the EVM is the `stack`, which holds small local variables and argument values. It’s
      almost free to use but can store only a limited number of values.

    * [Storage, Memory and the Stack](https://docs.soliditylang.org/en/v0.5.11/introduction-to-smart-contracts.html?highlight=storage#storage-memory-and-the-stack)


* In the Remix IDE, the functions we can observe in the smart contract may have buttons of different colors.

    * Constant, or “pure”, functions in Solidity have blue buttons. Clicking this type of button does not create a new
      transaction; it will only return a value stored in the contract and won’t cost you anything in gas fees.

    * Functions that change the state of the contract and do not accept ether are called **non-payable functions** and
      have orange buttons. Clicking these will create a transaction and thus cost you gas.

    * **Payable functions** in Solidity have red buttons. Clicking a red button will create a new transaction that can
      accept a value. The value is entered in the Value field, which is under the Gas Limit field.

</details>


<details>
<summary>
<strong> 2.5 This Payable (5 min)</strong>
</summary>

**Starter**: [CustomerAccount](Activities/2_5_This_Payable/Unsolved/CustomerAccount.sol)

**Solution**: [CustomerAccount](Activities/2_5_This_Payable/Solved/CustomerAccount.sol)

* We are going to add `sendRemittance`, `deposit` functions to `CustomerAccount`

    * A function `sendRemittance` which accepts and `amount` and `recipient` and transfer `amount` to the `recipient`.
      We would update the `accountBalance` using the `address(this).balance`

    * A `payable` function `deposit` which accept ether send to the contract. We would update the `accountBalance` using
      the `address(this).balance`

    * A fallback function is used in two scenarios: (1) if the function identifier doesn't match any other function in
      the contract, or (2) if the sending function doesn't supply any data, so we have to add the `external` keyword so
      that other contracts or transactions can call this contract. We also add the `payable` keyword so that the
      contract can collect any amount of ether that gets sent to it via the contract address.

</details>

- - -

## 3. Real Economics

| Activity Time:       0:10 | Elapsed Time:      0:45 |
|---------------------------|-------------------------|

<details>
<summary>
<strong> 3.1 Conditions Required (5 min)</strong>
</summary>

**Starter**: [CustomerAccount](Activities/3_1_Conditions_Required/Unsolved/CustomerAccount.sol)

**Solution**: [CustomerAccount](Activities/3_1_Conditions_Required/Solved/CustomerAccount.sol)

* We are going to add a `withdraw` functions to `CustomerAccount`

* The signature of the `withdraw` function would be similar to the `sendRemittance` function.

* We need to make sure the `recipient` is the `owner` of the account.

* We can use conditions, or even better the `require` function.

</details>

<details>
<summary>
<strong> 3.2 Message to the World (5 min)</strong>
</summary>

**Starter**: [CustomerAccount](Activities/3_2_Conditions_Required/Unsolved/CustomerAccount.sol)

**Solution**: [CustomerAccount](Activities/3_2_Conditions_Required/Solved/CustomerAccount.sol)

* The `msg` object represents the transaction call (originated by an Ethereum address) or the message call (originated
  by a contract's address) that triggers a contract execution.

* This object contains special attributes that allow access to the blockchain.

* The attributes of the `msg` object are the following:

    * `msg.sender`: Represents the Ethereum address that initiated the contract call. It can be an Ethereum address or a
      contract's address.

    * `msg.value`: Represents the value of ether that is sent in the transaction (expressed in wei).

    * `msg.data`: Represents the data payload of the call into our contract (expressed in bytes).

    * `msg.sig`: Represents the first four bytes of the data payload.

* Add public attributes `msgSender` and `msgValue` to store the `address` and the `value`.

* Update the `deposit` function to utilize the `msg` object
    * Assign `msg.sender` to `msgSender`.

    * Assign `msg.value` to `msgValue`.

* Learn more
  at [Block and Transaction Properties](https://docs.soliditylang.org/en/v0.5.0/units-and-global-variables.html#block-and-transaction-properties)

</details>


- - -

## 4. Tokenomics

| Activity Time:       0:40 | Elapsed Time:      1:25 |
|---------------------------|------------------------|

<details>
  <summary><strong> 4.1 Introduction to Tokenomics (5 min)</strong></summary>

* **Tokenomics**, or the economics of tokens, refers to how blockchain tokens get conceptualized, produced, valued,
  distributed, traded, and used. A blockchain token represents an asset or utility on a blockchain platform.
  Essentially, it’s a symbol of value.

* Lets understand the concept of tokens by using the following example:

    * Imagine you are on Superman's planet Kryptonite. When entering the Kryptonite, you can exchange cash for
      Kryptonite tokens that are worth $1 each.

    * Within the ecosystem of the Kryptonite, a Kryptonite token represents your ownership of $1.

    * You can exchange the Kryptonite token for a certain amount of time Superhuman time. Or, you can transfer your
      ownership of the $1 cents to someone else by giving the Kryptonite token to another person.

    * Blockchain tokens function much the same way. But, blockchain tokens get rendered digitally rather than as
      physical objects.

    * On a blockchain, an asset can be tokenized, or represented as a token. Commodities, like gold and silver, and
      currencies, like the US dollar, can all be represented as tokens. Other types of goods and assets can also be
      tokenized. These include real-estate properties, cars, and even works of art. In fact, virtually anything that
      holds value can be represented as a token on a blockchain.

</details>

<details>
  <summary>
  <strong> 4.2 Krypto Ken (5 min)</strong>
  </summary>

**Starter**: [KrypToken](Activities/4_2_Krypto_Ken/Unsolved/KrypToken.sol)

**Solution**: [KrypToken](Activities/4_2_Krypto_Ken/Solved/KrypToken.sol)

* Lets create a token using Solidity

* We are going to call this token as Krypto.

* The symbol for this token would be KRYP (pronounced as crypt)

* We will set the exchange rate between ETH and KRYP as 1 ETH = 10 KRYP

</details>

<details>
  <summary>
  <strong> 4.3 KRYP the Currency (5 min)</strong>
  </summary>

**Starter**: [KrypToken](Activities/4_3_KRYP_the_Currency/Unsolved/KrypToken.sol)

**Solution**: [KrypToken](Activities/4_3_KRYP_the_Currency/Solved/KrypToken.sol)

* Lets make our KRYP more functional by maintaing a ledger and providing functions to interact with the ledger and the
  KRYP

* We will add `mapping` to store balances of KRYP buyers along with their address.

* We'll add `balance`, `transfer` and `purchase` functions.

</details>

<details>
  <summary>
  <strong> 4.4 Mint KRYP (5 min)</strong>
  </summary>

**Starter**: [KrypToken](Activities/4_4_Mint_KRYP/Unsolved/KrypToken.sol)

**Solution**: [KrypToken](Activities/4_4_Mint_KRYP/Solved/KrypToken.sol)

* Lets add a mint function so Superman the owner of Kryptonite can mint some KRYP

* After adding the mint, lets deploy and test it.

</details>

<details>
  <summary>
  <strong> 4.5 OpenZeppelin be safe (5 min)</strong>
  </summary>

**Starter**: [KrypToken](Activities/4_5_OpenZeppelin_be_safe/Unsolved/KrypToken.sol)

**Solution**: [KrypToken](Activities/4_5_OpenZeppelin_be_safe/Solved/KrypToken.sol)

* Integer Overflows and Underflows:

    * Imagine that the odometer on a car has reached the maximum value that it supports. What happens after it reaches
      Mile 999,999? The odometer runs out of higher numbers and resets back to zero. That's an example of an integer
      overflow.

    * An integer underflow is the opposite. For example, we know that the minimum possible value of a uint is zero. And,
      say that we try to subtract an amount from zero. The value will roll back to the maximum value that the unit can
      contain. In the case of KrypToken, say that an user has zero tokens and tries to spend tokens—that
      is, to subtract tokens from the zero balance. Instead of getting a negative uint balance, the customer gets a new
      balance that’s the highest number a unit can hold. That represents an enormous number of tokens!

* [OpenZeppelin](https://www.openzeppelin.com/)

    * OpenZeppelin is a company that specializes in developing secure smart contracts that use Ethereum community
      standards. They provide several libraries for smart contract development.

    * The OpenZeppelin project includes many standardized smart contracts that the blockchain development community can
      adapt, customize, and build from. Developers can thus write more-secure and more-efficient Solidity code.

    * As demonstrated, the Kryptonite tokens that we created earlier in this lesson aren’t secure. The contract is
      vulnerable to rewarding an infinite number of tokens to a customer via an integer underflow error.

* We would use [OpenZeppelin SafeMath library](https://docs.openzeppelin.com/contracts/2.x/api/math) to make our Smart
  Contract safe by using `add`, `sub`, and `div`.

</details>

<details>
  <summary>
  <strong> 4.6 Token Standards and ERC-20 (5 min)</strong>
  </summary>

* [OpenZeppelin ERC-20 documentation](https://docs.openzeppelin.com/contracts/2.x/api/token/erc20)

* [ERC-20 Token Standard](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/)

* [ERC-721 Non-Fungible Token Standard](https://ethereum.org/en/developers/docs/standards/tokens/erc-721/)

* [OpenZeppelin ERC-20 documentation](https://docs.openzeppelin.com/contracts/2.x/api/token/erc20)

* [OpenZeppelin ERC20.sol GitHub page](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol)

* [CryptoKitties](https://www.cryptokitties.co/)

* [Explained: What are Non-fungible tokens or NFTs?](https://www.youtube.com/watch?v=X_AugmQpwho)

</details>

<details>
  <summary>
  <strong> 4.7 KrypToken is ERC-20 (5 min)</strong>
  </summary>

**Starter**: [KrypToken](Activities/4_7_KrypToken_is_ERC/Unsolved/KrypToken.sol)

**Solution**: [KrypToken](Activities/4_7_KrypToken_is_ERC-20/Solved/KrypToken.sol)

* [OpenZeppelin ERC20.sol Github](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol)

* [OpenZeppelin ERC20Detailed.sol Github](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol)

* Inherit KrypToken from ERC20 and ERC20Detailed.

* Add KrypToken constructor and initialize the ERC20Detailed constructor

* Add `onlyOwner` modifier

* Add the `mint` function

</details>

<details>
  <summary>
  <strong> 4.8 Ganache and Metamask (5 min)</strong>
  </summary>

* We will connect Ganache with Metamask to create a local blockchain network and wallet.

* We will now deploy `KrypToken` using Injected Web3 environment.

</details>



- - -

## 5. Crowdsale

| Activity Time:       0:20 | Elapsed Time:      1:45 |
|---------------------------|-------------------------|

<details>
  <summary><strong> 5.1 Introduction to Crowdsale (5 min)</strong></summary>

* In the traditional financial market, when a company wants to raise capital, they can sell shares of the company to the
  public through an **initial public offering (IPO)**.

* Blockchain companies have another option available to them: raising funds directly on the blockchain through a similar
  process, called an **initial coin offering (ICO)**. When a company holds an ICO, they use blockchain technology to
  generate and sell either blockchain coins or digital tokens.

* **Blockchain coins** are cryptocurrencies that are native to their blockchains, such as Bitcoin.

* **Digital tokens** can represent any asset, utility, service, or currency that has value to the potential buyers.

* Tokens might represent equity in the company (like in a traditional IPO) or a promise of future payment. They might
  also represent a utility or benefit that relates to the company’s blockchain application or service. These benefits
  include extra privileges on the system or exclusive or early access. In a gaming system, for example, a token might
  represent a special or unique item in the game.

* Regardless of the asset that ICO tokens represent, the blockchain uses a particular type of smart contract to encode
  the details of the token’s value.

* While blockchain tokens are often produced through an ICO, it’s also possible to produce them without undertaking an
  ICO. In fact, this lesson will teach how to code blockchain token smart contracts without an ICO.

</details>

<details>
  <summary><strong> 5.2 Crowdsale KrypToken (5 min)</strong></summary>

**Starter**: [KrypToken](Activities/5_2_Crowdsale_KrypToken/Unsolved/KrypToken.sol)

**Solution**: [KrypToken](Activities/5_2_Crowdsale_KrypToken/Solved/KrypToken.sol)

* [ERC20Mintable.sol GitHub](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol)

* We will inherit the `KrypToken` from `ERC20`, `ERC20Detailed` and `ERC20Mintable`

* Create the constructor for `KrypToken` to accept `name`, `symbol` and `initial_supply`

* Call `ERC20Detailed` constructor with `name`, `symbol` and `decimals`

* Call the `mint` function to mint `initial_supply` of **KRYP** in the constructor.

</details>

<details>
  <summary>
<strong> 5.3 KrypTokenCrowdsale (5 min)</strong>
</summary>

**Starter**: [KrypToken](Activities/5_3_KrypTokenCrowdsale/Unsolved/KrypToken.sol), [KrypTokenCrowdsale](Activities/5_3_KrypTokenCrowdsale/Unsolved/KrypTokenCrowdsale.sol)

**Solution**: [KrypToken](Activities/5_3_KrypTokenCrowdsale/Solved/KrypToken.sol), [KrypTokenCrowdsale](Activities/5_3_KrypTokenCrowdsale/Solved/KrypTokenCrowdsale.sol)

* [Crowdsale.sol GitHub](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol)

* We will inherit the `KrypTokenCrowdsale` from `Crowdsale` and `MintedCrowdsale`

* Create the constructor for `KrypTokenCrowdsale` to accept `rate`, `wallet` and `token`

* Call `Crowdsale` constructor with `rate`, `wallet` and `token`

* The constructor body can stay empty

</details>

<details>
  <summary>
<strong> 5.4 Auto Deploy (5 min)</strong>
</summary>

**Starter**: [KrypToken](Activities/5_4_Auto_Deploy/Unsolved/KrypToken.sol), [KrypTokenCrowdsale](Activities/5_4_Auto_Deploy/Unsolved/KrypTokenCrowdsale.sol), [KrypTokenCrowdsaleDeployer](Activities/5_4_Auto_Deploy/Unsolved/KrypTokenCrowdsaleDeployer.sol)

**Solution**: [KrypToken](Activities/5_4_Auto_Deploy/Solved/KrypToken.sol), [KrypTokenCrowdsale](Activities/5_4_Auto_Deploy/Solved/KrypTokenCrowdsale.sol), [KrypTokenCrowdsaleDeployer](Activities/5_4_Auto_Deploy/Solved/KrypTokenCrowdsaleDeployer.sol)

* We will use contract to deploy our `KrypToken` and `KrypTokenCrowdsale`

* We’ll use the `KrypTokenCrowdsaleDeployer` as a temporary helper contract that will help us set up, configure, and
  deploy our `KrypToken` and `KrypTokenCrowdsale` contracts with all the correct information.

* After the deployment and initial setup of our crowdsale, `KrypTokenCrowdsaleDeployer` will turn control of the
  crowdsale over to `KrypTokenCrowdsale`.

* The deployer contract will create our new `KrypToken` and `KrypTokenCrowdsale` contracts by calling the
  constructor functions of those contracts.

Explain that before that happens, however, we must accomplish one more step. We need to account for the addresses that
get assigned to both the `KrypToken` and `KrypTokenCrowdsale` contracts, as the following code shows:

```solidity
contract KrypTokenCrowdsaleDeployer {

    address public kryp_token_address;
    address public kryp_crowdsale_address;

}
```



</details>

- - -

## 6. Q & A

| Activity Time:       0:15 | Elapsed Time:      2:00 |
|---------------------------|-------------------------|

<details>
  <summary>
  <strong> 6.1 Everyone Do: Q & A (10 min)</strong>
  </summary>
</details>

- - -

## End Session