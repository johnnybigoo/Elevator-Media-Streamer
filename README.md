<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://rocketlift.ca/assets/_rocket/R2-3c6296bf2343b849b947f8ccfce0de61dd34ba7f9e2a23a53d0a743bc4604e3c.png">
    <img src="https://rocketlift.ca/assets/_rocket/R2-3c6296bf2343b849b947f8ccfce0de61dd34ba7f9e2a23a53d0a743bc4604e3c.png" alt="Logo" width="500" height="200">
  </a>

  <h3 align="center">Rocket Elevators Foundation
</h3>
  
  <p align="center">
    Odyssey Program - Week 10
  </p>
</p>



<!-- ABOUT THE PROJECT -->
## About The Project

Rocket Elevators Media Streamer is the 10th week project for the Odyssey 14 weeks program in CodeBoxx. 

By the 10th week We have created TDD  (Test-Driven Development) tests using the principle:

1. Write a test that fails
2. Pass it on
3. Refactoring your code.

<br>

<hr>

## Installation Ruby on Rails Prject

Clone or download the .zip for this project. 

Here are the commands that will have to be entered in your terminal to start the server:
- mySQL server start
- ruby -v (To check if a corresponding version need to be installed)
- rails -v (To check if a corresponding version need to be installed)
- bundle install (To install all the necessary Gems)
- Check in the directory for config/database.yml and if necessary replace the database password by yours.
- rails db:create
- rails s

<br>

Here are the commands that will have to be entered in your terminal when modifications are made in the database:
- Ctrl + C (to stop the server)
- rails db:migrate reset
- rails db:seed

<br>
<hr>

## Acessing

By clicking on “Login”, users will be redirected to a page and be asked to provide an email address and password.
	
	Example: 

	Email: nicolas.genest@codeboxx.biz
	Password: password

Forms are accessible to all users (with or without accounts). Once a “Contact Us” part for home page or Quote form in request a quote page is filled and submitted, data is generated in the back-end.

<br>

To access the database, use Dbeaver or MySQLWorkbench, which shows a history of data stored in the server. The fictitious and real data covers the last 3 years of activity from companies. Graphical representations and charts will also be available in the stats page of the website. 

<br><hr>

## To Perform a test


To perform all the tests go to the IDE Terminal and run: 

  `bundle exec rspec .`

<br>

We could monitoring the % of tests by running this command

  `open coverage/index.html`

it will open a monitoring page provided by [simplecov](https://github.com/simplecov-ruby/simplecov) gem

<br>

To run specific tests: 

  - For tdd_demo, run this command:

  `bundle exec rspec spec/string_calculator_spec.rb`

<br>

  - For streamer_media, run this command:

  `bundle exec rspec spec/lib/elevator_media/streamer_spec.rb`

<br>

  - For controllers/interventions_controller, run this command:

  `bundle exec rspec spec/controllers/interventions_controller_spec.rb`

<br>




