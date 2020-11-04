# README for the  Dan_Jon_Mary_AWAAD_Team_20 #  
Ruby 2.6.5  Rails 6.0.3
A live version is deployed on Heroku, and can be accessed using the following link:
https://country-gdp.herokuapp.com/
You can use these account details to log in (as required in the last assessment)
Admin - username/password
Normal user - username/password
To view the chart for each country in the year page, click show and reload the page
To view the map for each country, in the country page, click show and reload the page

## running the application locally ##
Run bundle install If the sqlite3 database isn't already present, then seed the database using:
Run yarn install –check-files
Run rails db:migrate
rake countries:seed_countries 
rake years:seed_years
Access the application using: http://localhost:3000
To view the chart for each country in the year page, click show and reload the page
To view the map for each country, in the country page, click show and reload the page

## Group Members ##
DAY, JONATHON PAUL (51657419)
HAN, DAN (51989988)
UGOCHUKWU-IBE, IJEOMA MARY (51989660)

## These are the parts that are not working correctly ##
We tried to integrate < bootstrap-will_paginate> by doing < adding bootstrap-will_paginate to the Gemfile and creating the will_paginate.rb file in config/initialisers folder, then adding the page navigation bar in app/view/years/index.html.erb >
This didn't work, so we commented it out so that you could see the code.
