# scheck

Playing around with ScalaCheck.

---

### ScalaCheck overview

[ScalaCheck](http://www.scalacheck.org/) is a unit-testing framework (written in [Scala](http://www.scalacheck.org/)) for Scala and Java programs. ScalaCheck adopts the property-based approach of writing tests and provides several tools to make the testing more productive, the most significant being the ability to automatically generate test data. The framework therefore has the two following fundamental concepts:-

_**properties**_ - they test the output of a specifc function    
_**generators**_ - they generate random test data for the properties to test    


The idea is that the programmer defines the _properties_ (which test different aspects of a function), and the ScalaCheck library automatically generates random test data and checks that each property holds true for each instance of that test data. A property only _passes_ if it holds true for every generated piece of test data. This removes some of the burden on the programmer who now does not need to spend so much time thinking about writing tests for particular boundary cases and instead he/she can let the framework do much of the heavy lifting. The framework is also pretty savvy in that it is designed - when a property fails - to then go and find the _shortest_ failure path (explained further on). 

#### Generating custom data types

ScalaCheck can generate basic data types (strings, integers, chars etc) automatically because it already understands them, but if we want to generate our own custom types then we need to write custom data generators for these types. Fortunately, writing custom generators is not a very complex task.