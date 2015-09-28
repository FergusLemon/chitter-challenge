[![Build Status](https://travis-ci.org/Harryandrew/Chitter-Challenge.svg?branch=master)](https://travis-ci.org/Harryandrew/Chitter-Challenge)
[![Coverage Status](https://coveralls.io/repos/Harryandrew/Chitter-Challenge/badge.svg?branch=master&service=github)](https://coveralls.io/github/Harryandrew/Chitter-Challenge?branch=master)
[![Dependency Status](https://gemnasium.com/Harryandrew/Chitter-Challenge.svg)](https://gemnasium.com/Harryandrew/Chitter-Challenge)

**Chitter-Challenge**
=================
Week four Makers Academy - Chitter challenge!

Description
------------
The challenge this week is to write a Twitter clone that will allow users to post messages to a public stream.   
The application is built on Sinatra 1.4.6 and tested using Rspec 3.3, site data currently is maintained with a postgresql local database. [Click here](https://rubygems.org/gems/pg/versions/0.18.3) for the gem and more information.   

The main feature of the application is the user management system, where users are able to sign up and make posts to the main feed (otherwise known as 'peeps'). Users can sign up and login, and request a password reset if needs be. User passwords are encrypted and salt hashed internally to the database with [Bcrypt](http://bcrypt.sourceforge.net/). Users must have an account to make posts.

Installation/Dependencies
--------------------------
Running on Ruby version 2.2.3

To preview, `git clone` this repo from the command line, then run `bundle` to install the relevant dependencies.   
Rack up the middleware of your choice and point your browser accordingly. Tested and working with Rackup & Puma.
When running locally you must configure postgresql to handle database functionality.

   
![Chitter](https://github.com/harryandrew/chitter-challenge/blob/master/public/snapshot.png)