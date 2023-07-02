# Astemes LMock Toolkit

This repository contains the LMock toolkit which can generate mock classes to be used during testing LabVIEW code using LUnit.
The toolkit features a very expressive API which allows for advanced assertions and generates detailed failure descriptions.

## Test Doubles and Mocks

When writing unit tests there are basically three ways for tests to make assertions about the unit under test. 

1. Verify an output given some input data 
2. Verify the state of the unit given some stimulus
3. Verify calls to code external to the unit under test

In general, one should have a preference for the earlier types of tests in the list, but there are many cases where it is simply not feasible to have a pure functional VI. 
Test doubles are used to handle the third item in the listing and are valueable tools for verifying the behavior of the code.
Examples could be interation with instrumentation or any situation where one need to verify the interaction with the rest of the system. 

There is a lot of literature available on the subject and it is not the purpose of this document to pharaphrase existing material.
I did give [a presentation](https://www.youtube.com/watch?v=6cfifZbhZsE&t=44s) during GDevCon 2022, which introduced the concept of mocks.

## Background

During my own journey learning test driven development (TDD), I have written a lot of test doubles.
While it is pretty easy to write your own spys or mocks in LabVIEW, it is a task which becomes a bit dull.
It gets especially tedious when creating or changing interfaces, which is very common while refactoring.
I've found myself to write the same type of code in slightly different ways, which makes the tests error prone and unnecessarily difficult to understand.
In most common languages, there is good tooling available for generating mocks and LMock was inspired by the Java [jMock](http://jmock.org/) library.

The main reason why LMock exists is to solve the following
- Eliminate mistakes cuased by manual duplication of boilerplate code
- Minimize friction for refactoring and creating narrow interfaces
- Improve expressiveness and fault localization of mock-based tests

## A Recommendation

While using a toolkit such as LMock to generate code can save some time writing code, it is important that the developer understands the underlying concepts.
LMock throws the LabVIEW syntax a bit over it's head, so it can be confusing to learn the concept of mocks while learning to use the API of the toolkit.
For this reason I would not generally recommend using LMock before having written your own mocks and you have a good understanding the techniques and concepts.
But this is just my own experience and you might perceive it differently, so do draw your own conclusions.
