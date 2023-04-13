{{PROBLEM}} Method Design Recipe

Copy this into a recipe.md in your project and fill it out.
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

string_is_a_todo(string)
=> return true/false

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

string_is_a_todo("TODO: laundry") => true
string_is_a_todo("wash the dishes) => false
string_is_a_todo("todo: change sheets") => false
string_is_a_todo(6) => error


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.