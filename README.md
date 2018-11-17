# Calculator App Testing

## Before you test

### 1. Install Appium, Android sdk, UiAutomator2
Follow this [instructions](http://appium.io/docs/en/about-appium/getting-started/index.html) to setup Appium and all dependencies, complete until the end of **Starting Appium** section of the mentioned link.

### 2. Install Ruby

All these commands are done from a terminal window.  If you've already done
a step, you can safely ignore that command.

Open this directory:  `cd calculator_bdd`

Install Ruby:  `\curl -L https://get.rvm.io | bash -s stable --ruby`

Install Bundler:  `gem install bundle`

Install Gems:  `bundle update`

You're ready to go!

## [Execute the test with Cucumber]()

Cucumber is a Behaviour Driven Design framework that lots of people are keen on.
It lets you describe test actions in a clean, concise, English-like manner.

Run the test by making sure Appium is running in another terminal, and then, open the terminal at the **CalculatorAppBDD** folder
from the command line, install all gems of the project by entering 

This only need to do once `bundle install` 

To run the test suite, enter `bundle exec cucumber`

**Note** This code has been tested on emulator device Nexus_5X_API_27 (Android 8.1). Appium 1.9.1 on MAC OSX 10.14
 I don't have enough time to test on others :(