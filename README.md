# sparta-openweather-api

For this homework I was required to test a live **API** using **OpenWeatherMap**.  The **API** was retrieved using the **HTTParty** gem and then parsed using the **JSON** gem and tested using the 10 constructed tests to make sure that the data structure worked correctly and that all the tests passed for different locations.

The tests target each layer of the structure and tests were carried out to check datatypes, integer lengths and that the api was giving the correct HTTP response.

# Tests Run

- should respond with a status message of 200
- should have a weather array
- should return a temp as a float
- should return a temp_min as a float
- should return a temp_max as a float
- should return a name as a string
- the weather array should contain 4 items
- the id should contain 7 digits
- the weather array should contain 4 items
- the sys hash should contain 6 keys

# To Run The Tests

- Clone the repo using `git clone 'git@github.com:NBurns90/sparta-openweather-api.git`
- Open the file space in **Atom**
- Run `bundle` to install of dependancies
- To perform the tests type `rspec` in terminal
