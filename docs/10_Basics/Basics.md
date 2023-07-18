# LMock Basics

This document walks through the basic workflow using LMock to test LabVIEW code using mock objects.
All the code introduced in this document is available as example code installed with the toolkit package.

## Prerequisites

To follow along with the instructions on this page you will need to have LabVIEW version 2020 or later installed as well as the [LUnit unit testing framework](https://github.com/Astemes/astemes-lunit/releases) and the [LMock mocking toolkit](https://github.com/Astemes/astemes-lmock/releases).

## Using LMock

Below is a brief introduction to basic useage of LMock.
There is a rich syntax provided in the API, for more details, please see the API documentation.
To make this section a bit less abstract, let us continue by looking at a simple example.
The source code is available in the repository and installed as example code at ``C:\Program Files (x86)\National Instruments\LabVIEW 202X\examples\Astemes\LMock``.

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

## Adding a New Feature

The classes developed above are highly cohesive and the ``Driver.lvclass`` is weakly coupled to the serial interface through the ``Serial.lvclass`` interface.
There is a clear separation of concerns and we have a clear architectural boundary introduced by the abstract interfaec.
This gives a lot of flexibility as we may
- change the implementation of the ``Serial.lvclass`` interface to use a different bus or calling the bus in a different way
- change how the data is sent to the bus, *e.g.* adding end of line characters
- add logging of the communication, through wrapping the implementation of the ``Serial.lvclass`` in a logging decorator
- and more
**without making any changes to our ``Driver.lvclass``**.
Let us next explore how we can implement a new, test-driven, feature and how this plugs into our design.

When working with hardware, it is often valueable to be able to probe the data sent on the bus during debugging and integration of the whole system.
The logging feature might then need to be turned off in production to minimize overhead and prevent exessive logs from accumulating.
A well designed system lets us toggle the logging on or off and allows for redirecting the output to different locations **e.g.** a file or a debug view. 

### Introducing a New Interface

In the spirit of test driven development, we will start by writing a test.
This test will need to verify that data sent to, and later read from, the instrument is also sent to a log.
The implementation of the log is not really important at this point, we just need an interface representing the log to which we can write.
The concrete log may then be implemented as a file, an indicator, an email message or whatever we may need later in our project.

Let us simply define the an interface for the log with a ``Write.vi`` method.

## Discussion

The example above shows how driving the design by tests, enabled by mocks, puts a pressure on the design.
One might argue that two concrete classses, an interface, a mock, and a test case is overkill for the simple driver developent shown above.
It is important to keep in mind that a real world application would not be considered done at this point and would grow in complexity considerably before being put into production. 
And then the importance of design increases significantly.

Already when we wanted to add logging to the driver, we were able to leverage the loose coupling between the driver and the actual hardware calls.
Note that when I first started writing this example, I had no intention or plan to add logging, it was added as pure afterthought.
Because of the loose coupling the new feature did not necessitate any changes to the existing driver, which is a charactheristic of good design.
