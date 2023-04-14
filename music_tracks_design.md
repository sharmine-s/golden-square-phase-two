{{PROBLEM}} Class Design Recipe

Copy this into a recipe.md in your project and fill it out.
1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class

Include the name of the method, its parameters, return value, and side effects.

MusicTracks will be the name of the class
initialize - no parameters needed, will intialize an array (where tracks will be stored)
add_track - take a string parameter, will add to the array, returns a success message
show_tracks - no parameters, will display all of the tracks added

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

add_track("Linkin Park - Numb") => "Linkin Park - Numb successfully added!"
add_track("Burna Boy - On The Low") => "Burna Boy - On The Low successfully added!"
show_tracks => ["Linkin Park - Numb", "Burna Boy - On The Low"]
add_track(4) => "Track needs to be a string"


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.