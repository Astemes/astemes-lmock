# LMock Framework Architecture

The following introduces the design of the LMock framework.
This is not necessary to understand at a deep level when using LMock, and is intended for curious readers and potential contributors.
Details are omitted from this document, as they tend to change and woudl quickly get outdated.
The best source of truth is to read the unit tests for LMock.

## The Mock Class

The purpose of the mock class is to provide the boilerplate needed to track expectations, VI calls and return values.
The class maintains references to all configured expectations and a reference to a map of queues of return values.

The class has two protected methods. 
The ``Mock Call.vi`` is called in each dynamic dispatch method in the concrete mock class.
This VI registers a call to the VI with the given input patameters, which is later forwarded to all configured expectations to determine if the expectation is fulfilled.
The ``Mock Call.vi`` also returns a map of return values which the VI call should use.
The mapping to the front panel controls and indicators is managed through scripting.

## VI Call

The ``VI Call.lvclass`` is an interface which describes a call to a VI.
Each call should have a VI Name and a map of input parameters.
VI Calls are compared by Expectations using Comparators to determine the result of a test.

## Comparators

Comparators inherits from the ``Comparator.lvclass`` interface and are orthogonal to Expectations.
This implies that any Expectations should work with any comparator.
The purpose of the comparator is to determine when two VI calls are to be considered as matching.
Additionally, the comparator should provide a description of the comparison used in the test result description.

## Expectations

An expectation is a class inheriting from the ``Expectation.lvclass`` interface.
Expectations are and must be by-value classes.

The expectations uses the visitor pattern to compare VI calls.
This implies that the constructor of each expectation takes a comparator, which it should use for checking the VI calls.
This enables reuse of the comparator and expectation code, as well as result message generation.

The ``Expectation.lvclass`` interface declares two methods, ``Record Call.vi`` and ``Evaluate.vi``.
The record call is called whenever a VI (any VI) is called on the mock.
The LMock API convention states that the first VI call recorded by an expectation should define the expectaion.
Any subsequent calls are calls to be checked against this expected VI call using the configured comparator.
Note that there is no way of knowing when the configuration ends and the actual test begins. 

The ``Evaluate.vi`` is called by the ``Verify.vi`` method of the framework when the mock is verified and returns a pass/fail-result together with a description string.
The expectation should keep track of all calls to it to be able to determine the result.

The expectation API is polymorphic and eaxh polymorphic variant instantiates an expectation with a different comparator.


