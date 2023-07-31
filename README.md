# Astemes LMock Toolkit

LMock is a LabVIEW mocking framework used for automatically generating and maintaining mock classes.
A mock is a test double used, in place of a concrete implementation, when writing automated tests.
This enables testing units of code in isolation, as the interface to the rest of the system is "mocked".
Using a mock the behavior of the code under test can be verified, by checking that the expected VI calls are made.
Furthermore, outputs from calls to the mocked objects can be predefined to stimulate and control the system under test.
The LMock toolkit features an expressive API, powerful scripting features, and detailed failure descriptions.

LMock is an add-on to [LUnit](https://www.github.com/astemes/astemes-lunit) and is maintained by Astemes under an MIT license.

The full documentation is available at [https://lmock.astemes.com](https://lmock.astemes.com).

## Getting Started

Before beginning to use LMock, you will need to have LUnit installed (available at NI Tools Network and VIPM) and you should be familiar with the toolkit.
Next install the LMock latest package, either from the [Releases](https://github.com/Astemes/astemes-lmock/releases) section of through VIPM.
After installing LMock, the API is available in the LMock Functions Palette and the right-click menus are avaliable after restarting LabVIEW.
Please see the [getting started documeentation](https://lmock.astemes.com/).).

For some general advice on working with mocks, see e.g. [this page](https://github.com/mockito/mockito/wiki/How-to-write-good-tests).


## Test Doubles and Mocks

When writing unit tests there are basically three ways for tests to make assertions about the system under test. 

1. Verify an output given some input data 
2. Verify the state of an external object acted uppn by the unit under test
3. Verify calls to code external to the unit under test

In general, one should have a preference for the earlier types of tests in the list, but there are many cases where it is simply not feasible to have a pure functional VI. 
Test doubles are used to handle the latter items in the listing and are valueable tools for verifying the behavior of the code.
Examples could be interation with instrumentation, the file system, a network, a database, or any situation where one need to verify the interaction with an external component. 

There is a lot of literature available on the subject and it is not the purpose of this document to pharaphrase existing material.
I gave [a presentation](https://www.youtube.com/watch?v=6cfifZbhZsE&t=44s) during GDevCon 2022, which explores unit testing and introduced the concept of mocks.

## Purpose of LMock

While it is pretty easy to write test diubles in LabVIEW, it is a task which becomes repetitive and a bit dull.
Often the same type of code is written or copy/pasted repeatedly in slightly different ways, which makes the tests error prone and unnecessarily difficult to understand.

The reason why LMock exists is to:

- Enable robust mock-based testing
- Eliminate mistakes caused by manual duplication of boilerplate code
- Improve expressiveness and fault localization of mock-based tests
- Reduce test time through very fast mock code execution
- Minimize friction for creating good design

In many common languages, there is good tooling available for generating and working with mocks.
LMock was inspired by the Java libraries [jMock](http://jmock.org/) and [Mockito](http://mockito.org).
These libraries uses and abuses the syntax of Java to generate very elegant test code, and JMock brings this tradition into LabVIEW with some slightly unorthodox design choices. 

## A Recommendation

If you are new to unit tests and test driven development, learning to use a mocking library is not the best way to get started.
Mocks are powerful tools, but should only be used when direct verification cannot be achieved.
While using a toolkit such as LMock can save some time writing, reading, and maintaining code, it is important that the developer understands the underlying concepts.
LMock throws the LabVIEW syntax a bit over it's head, so it may be confusing when getting familiar with the concept of mocks.
For this reason I would not generally recommend using LMock before having written your own mocks and you have a good understanding the techniques and concepts.
But this is just my own experience and you might perceive it differently, so do draw your own conclusions.
