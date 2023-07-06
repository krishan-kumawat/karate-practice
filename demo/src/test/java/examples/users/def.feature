Feature:

Scenario:
#assigning a string variable
Given def color = "Red "
And def num = 5
Then assert color+num == "Red 5"
#using a variable (we can use * instead of given /when /Then)
* print 'the value of color is :', color

#assigning a number (we can use * instead of given /when /Then)
# def myNum =5

Given def myJson = { foo: 'bar', baz: [1, 2, 3] }
# Given def muJson2 = """ name : Alex """
Then print 'the value of myJson is:', myJson


Scenario:
Given def color = 5
And def num = 5
Then assert color+num == 10 
#using a variable (we can use * instead of given /when /Then)
* print 'the value of color is :', color

