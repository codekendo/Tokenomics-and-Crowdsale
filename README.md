# Tokenomics

## Overview
A Study Session introducing concepts of Solidity and Advanced Solidity.

## Learning Objectives

* 

- - -

## 0. Prework

<details>
  <summary>
  <strong>Installations</strong>
  </summary>
  
  * **Metamask**: MetaMask is a digital wallet for the Ethereum blockchain. To install MetaMask in your web browser, follow the instructions on the [MetaMask Download page](https://metamask.io/download). Please create a wallet on Metamask by following the onscreen instructions.
  * **Ganache**: With the Ganache tool, you can quickly set up a local blockchain. You can then use this blockchain to test and develop smart contracts. To download and install this tool on your local machine, follow the instructions on the [Ganache download page](https://www.trufflesuite.com/ganache).

</details>

<details>
  <summary>
  <strong>Reading</strong>
  </summary>
  
  * **Block Chain**:
  * **Smart Contracts**: 

</details>


- - -

## 1. Getting Started

| Activity Time:       0:30 |  Elapsed Time:      0:30  |
|---------------------------|---------------------------|

<details>
  <summary>
  <strong> 📣 1.1 Instructor Do: Welcome Class (5 min)</strong>
  </summary>


**What will you learn by the end of the Session**
  * Introduction to Block Chain
  * Introduction to Smart Contracts
</details>

<details>
  <summary><strong> 📣 1.2 Instructor Do: Introduction to Block Chain (15 min)</strong></summary>

</details>

<details>
  <summary>
  <strong> 📣 1.3 Instructor Do: Smart Contracts (10 min)</strong>
  </summary>


</details>

- - -

## 2. Introduction to Solidity

| Activity Time:       0:30 |  Elapsed Time:      1:00  |
|---------------------------|---------------------------|

<details>
  <summary>
    <strong> 📣 2.1 Instructor Do: Introduction to Solidity (10 min)</strong>
  </summary>

* [Remix IDE](https://remix.ethereum.org/)
  * We use an IDE for Solidity, just like we use an IDE for Python. But instead of using Visual Studio Code or JupyterLab, we’ll use the Remix IDE.

  * The Remix IDE is an open-source application for developing, deploying, and administering smart contracts that run on Ethereum-based blockchains. We can use this IDE for the entire development cycle of smart contracts and as a playground for teaching and learning Ethereum.

  * The Remix IDE is available in both web and desktop versions For better compatibility among operating systems. In our class, we’ll use the web version of the Remix IDE.

  * Because Remix is an open-source application, the Remix IDE is under constant development, and its user interface often gets updated. So, the interface in the current live version might vary from the slides that appear in this lesson.  

* Solidity Data Types

![Solidity Data Types](/images/1-2-solidity-data-types.png)

* Note the following about the Solidity data types:

  * A variable of type `string` stores a text value.

  * A variable of type `uint` stores a positive number. The keyword `uint` stands for “unsigned integer.”

  * A variable of type `int` stores a number. This type of variable can store a positive or a negative integer.

  * A variable of type `address` stores an Ethereum address. This is a special Solidity data type for storing an Ethereum address in a way that’s computationally more efficient than storing a string.

  * A variable of type `bool` stores a Boolean value&mdash;that is, `true` or `false`.

* In the Remix IDE, the functions you observe in the smart contract may have buttons of different colors.

  * Constant, or “pure”, functions in Solidity have blue buttons. Clicking this type of button does not create a new transaction; it will only return a value stored in the contract and won’t cost you anything in gas fees.

  * Functions that change the state of the contract and do not accept ether are called **non-payable functions** and have orange buttons. Clicking these will create a transaction and thus cost you gas.

  * **Payable functions** in Solidity have red buttons. Clicking a red button will create a new transaction that can accept a value. The value is entered in the Value field, which is under the Gas Limit field.

</details>

<details>
  <summary>
    <strong> 📣 2.2 Everyone Do: Create a Customer Contract (20 min)</strong>
  </summary>

In this part of the lesson, you as the instructor will review the first smart contract that the students independently wrote by live coding it. Solidity is new to them, so they might have questions. Be sure to allow time for them to ask questions after each step.

First, tell the compiler the version of Solidity that we’re using: `pragma solidity ^0.5.0;`. Then, begin by using the `contract` keyword and the `CustomerAccount` contract name to create the contract, as the following code shows:

```solidity
pragma solidity ^0.5.0;

contract CustomerAccount {}
```

Emphasize that this is how we begin to write every smart contract.

Next, create the following variables in the body of the smart contract, and emphasize the appropriate data types:

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

Compile the smart contract. If an error occurs, review the code, and make the necessary changes for a successful compilation.

Ask the class if they have any questions.




</details>

- - -

## 3. Second Activity

| Activity Time:       0:20 |  Elapsed Time:      1:20  |
|---------------------------|---------------------------|

<details>
  <summary><strong> 📣 3.1 Instructor Do: Second Activity (10 min)</strong></summary>
</details>

- - -

## 4. Third Activity

| Activity Time:       0:30 |  Elapsed Time:      1:50  |
|---------------------------|---------------------------|

<details>
  <summary><strong> 📣 4.1 Instructor Do: Third Activity (10 min)</strong></summary>
</details>

- - -

## 5. Q & A

| Activity Time:       0:10 |  Elapsed Time:      2:00  |
|---------------------------|---------------------------|

<details>
  <summary>
  <strong>📣 5.1 Everyone Do: Q & A (10 min)</strong>
  </summary>
</details>

- - -

## End Session