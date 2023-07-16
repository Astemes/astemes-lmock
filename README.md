# Astemes LMock Toolkit

LMock is a LabVIEW mocking framework used for generating mock classes through scripting.
A mock is a test double used, in place of a concrete implementation, when writing automated tests.
This enables testing units of code in isolation, as the interface to the rest of the system is "mocked".
Using a mock the behavior of the code under test can be verified, by checking that the expected VI calls are made.
Furthermore, outputs from calls to the mocked objects can be predefined to stimulate and control the system under test.
The LMock toolkit features an expressive API, powerful scripting features, and detailed failure descriptions.

LMock is an add-on to [LUnit](https://www.ithub.com/astemes/astemes-lunit) and is maintained by Astemes under an MIT license.

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
- Eliminate mistakes cuased by manual duplication of boilerplate code
- Minimize friction for creating good design
- Improve expressiveness and fault localization of mock-based tests

In many common languages, there is good tooling available for generating and working with mocks.
LMock was inspired by the Java libraries [jMock](http://jmock.org/) and [Mockito](http://mockito.org).
These libraries uses and abuses the syntax of Java to generate very elegant test code, and JMock brings this tradition into LabVIEW with some slightly unorthodox design choices. 

## Introduction to LMock

Below is a brief introduction to basic useage of LMock.
There is a rich syntax provided in the API, which in its completeness is beyond the scope of this readme.
For more details, please see the documentation.
To make this section a bit less abstract, let us continue by looking at a simple example.

We will next consider a typical Test Driven Development workflow for developing a driver for some instrument.
We will want to verify what is sent to the instrument by the driver, and how the responses are interpreted.
We would typically start by defining an interface, wrapping the calls to the communication bus.
Note that we do not need to consider what the physical interface actually is (RS-232, TCP/IP, etc.), we only care that we can write to and read from the bus.
Initially our interface could look like below.

![Serial Interface](docs/10_Basics/img/Serial%20Interface.png)

As we only need the read and write methods for now, we will not bloath the interface with methods we might need later.
We can always extend it later when the need arises and our design has settled.

### Mocking an Interface

LMock does not allow for mocking concreate classes, only abstract interfaces may be mocked.
To genrate a Mock for an interface in LabVIEW, simply right-click it in the LabVIEW Project Explorer and select ``Mock...``. 

![Generate Mock](docs/10_Basics/img/Mock%20Serial%20Driver.png)

This will generate a new class which implements the selected interface and inherits from the LMock ``Mock.lvclass``.
All dynamic dispatch VI:s are overridden by the mock class and special ``When`` VI:s are generated for each dynamic dispatch VI.
The ``When`` API is used for defining outputs of the mock class when it is called.

![Mock Class Hierarchy](docs/10_Basics/img/Mock%20Class%20Structure.png)

The generated mock class can be used as a test double replacing the concrete implementation of the interface when writing a test.
We now have what we need to start writing a unit test.
To get going, we create a LUnit Test Case and a ``Driver.lvclass`` class for the driver we are about to develop, our system under test.

### Seting up Expectations

We now have an empty class called ``Driver.lvclass`` and a LUnit Test Case class called ``Driver Test.lvclass``. 
Next we create a test case VI from the static test template and start fleshing it out.
The first thing we are going to test is that the driver sends the correct query string to the instrument when we try to read a voltage.
Now we use the LMock syntax to setup expectations on the mock, which is a central concept for mock based testing.
The test case looks as below.

![First test case](docs/10_Basics/img/Test%20Case%201.png)

We first create an instance of ``Serial Mock`` (1.).
Using ``One.vi`` (2.) and the ``Write.vi`` (3.) we declare that we expect the ``Write.vi`` VI to be called exactly once during the test with the given inputs.
The ``One.vi`` is a special API VI used to configure an expectation.
The next VI called on the mock, after ``One.vi``, specifies the expected call we are expecting and the expected inputs.
The polymorphic VI selector showing ``Same Inputs`` configures the expextation to match only when all inputs to the call to ``Write.vi`` are identical to the ones used at (3.).
So in this case the test will pass if the ``Write.vi`` is called during the test with the string input of ``MEASURE:VOLTAGE?`` and no error at the Error In control.

### Verifying Behavior

Now the Mock has been configured, and we continue to create an instance of our system under test, the ``Driver.lvclass``, and inject our configured ``Mock Serial.lvclass`` to the constructor (4.).
Next we exercise the system under test, by calling the ``Read Voltage.vi`` (5.), which is what should trigger the mock to be called.
We call the ``Verify.vi`` with the Mock as input which does the work of verifying the mock and generating the result description message.

As we have been creating the needed VI:s for our ``Driver.lvclass`` while writing the tests, the block diagrams are still empty and our test case should fail.
and indeed it does with the following failure message:

```
Write.vi Expected Once but Never Called with Expected Inputs
```

The implementation for solving this is trivial.
After filling in the blanks, the test passes and we get the gratifying green bar and the following message

```
Write.vi Called Once with Expected Inputs
Call 1: error in (no error): No Error(Cluster) == No Error(Cluster), write buffer: MEASURE:VOLTAGE?(String) == MEASURE:VOLTAGE?(String)
```

### Defining Stubbed Behavior 

Now we have verified that our system upnder test sends the appropriate message for reading the voltage.
Next we need to consider parsing the response from the instrument.
To continue we will need to use the ``When Write.vi`` generated by the mocking framework.
The next test case looks as follows.
 
![Second test case](docs/10_Basics/img/Test%20Case%202.png)

As before, we create a new mock instance (1.), but now we do not configure any expectations for the mock, as we are not going to verify calls made to the mock.
Instead we use the ``When Write.vi``(2.) to define what is returned by the ``Write.vi`` when it is called. 
As seen in the figure, the LMock When API has inputs where the interface API has outputs, so the direction of the data flow is reversed.
This is intentional, as it results in intuitively readable test code.

Similar to before, the system under test is initialized (3.), exercised (4.), and cleared (5.). 
As we do not need to verify calls to the mock, we uses the regular test verification methods of LUnit(6.) to verify that the response is properly parsed.

### Updating a Mock Class

As we work with the code, we might need to change or update our design.
Let us now explore such a scenario and assume that we now need to make sure that the bus is closed when we are done with it. 
At this point we need to add a new method to our abstract interface.
After this, our mock class will be broken because it does not implement our new method. 

LMock offers a feature for update existing Mocks by right-clicking a mock in the LabVIEW project explorer and selecting ``Update Mock...``.
![Update Mock](docs/10_Basics/img/Update%20Mock.png)

This will replace the existing mock with a new mock re-generated from the mocked interface.
All existing code is relinked to this updated mock class.
We can now continue writing tests using the new API VI:s to verify that ``Close.vi`` is called appropriately..

### Discussion

The example above shows how driving the design by tests, enabled by mocks, puts a pressure on the design.
One might argue that two concrete classses, an interface, a mock, and a test case is overkill for the simple driver developent shown above.
It is important to keep in mind that a real world application would not be considered done at this point and would grow in complexity considerably before being put into production. 
And then the importance of design increases significantly.

The classes developed above are highly cohesive and the ``Driver.lvclass`` is weakly coupled to the serial interface through the ``Serial.lvclass`` interface.
There is a clear separation of concerns and we have a clear architectural boundary introduced by the abstract interfaec.
This gives a lot of flexibility as we may
- change the implementation of the ``Serial.lvclass`` interface to use a different bus or calling the bus in a different way
- change how the data is sent to the bus, *e.g.* adding end of line characters
- add logging of the communication, through wrapping the implementation of the ``Serial.lvclass`` in a logging decorator
- and more
**without making any changes to our ``Driver.lvclass``**.

## A Recommendation

If you are new to unit tests and test driven development, learning to use a mocking library is not the best way to get started.
Mocks are powerful tools, but should only be used when direct verification cannot be achieved.
While using a toolkit such as LMock can save some time writing, reading, and maintaining code, it is important that the developer understands the underlying concepts.
LMock throws the LabVIEW syntax a bit over it's head, so it may be confusing when getting familiar with the concept of mocks.
For this reason I would not generally recommend using LMock before having written your own mocks and you have a good understanding the techniques and concepts.
But this is just my own experience and you might perceive it differently, so do draw your own conclusions.
