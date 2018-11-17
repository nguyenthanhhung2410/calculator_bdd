# WHAT ARE FEATURES?
# ------------------
# Features describe what something should allow a user to accomplish.  They're
# high-level things, like you'd put in your manual or marketing copy.  Each
# line describes a "step" which should pass for the feature to be
# implemented.  They're usually written with non-developers in mind, so should
# be nice, plain and English like.
#
# WHAT ARE THE OTHER FILES?
# -------------------------
# The 'steps' are implemented in a step definition file, which is created by
# developers.  Ideally, once steps have been created, anyone can write a
# feature by using step definitions to do so.  The step definitions for this
# example can be found in the cucumber/features/step_definitions/steps.rb file.
#
# RUNNING THE TEST:
# -----------------
# Assuming you've (successfully) run the examples in the simple_test.rb file,
# all you should need for Cucumber is:
#
# 1.  Start Appium in a terminal window
# 2.  From another terminal window, open the cucumber example directory at
#     appium/sample-code/examples/ruby/cucumber_android/
# 3.  type 'cucumber' and hit enter
# 4.  If you see '1 scenario (1 passed)' and some other stuff, SUCCESS! The
#     test passed.  If you didn't, BOOOO, that's not right.  Make sure you've
#     followed all the instructions for setup in the simple_test.rb file and
#     give it another shot.  If that doesn't work, log a support ticket on
#     Github at https://github.com/appium/appium/issues/new
#
# ADDITIONAL INFORMATION:
# -----------------------
#
# For more information about features, check out the documentation at:
# https://github.com/cucumber/cucumber/wiki/Feature-Introduction

Feature: Calculator basic functions
  Verify all basic functions of Calculator app

  Background: Launch Calculator app
    Given I have the Calculator app opened

  Scenario Outline: Simple Calculations
    Given I have a clear screen
    When I input <calculation>
    Then I should see the correct <result> of input calculation on the screen
    Examples:
      | calculation | result |
      | 2x2+4:5     | 4.8    |
      | 2x2+4x3     | 16     |
      | 12x2+4x30   | 144    |

  Scenario: App must remain status after putting to background
    Given I have a clear screen
    When I input 10 - 5
    Then I should see the correct 5 of input calculation on the screen
    When I put the app to background for 10 seconds
    Then I should see the app status remained the same

  Scenario: Open Advance Calculations
    Given I have a clear screen
    And I open advance calculation screen
    Then I should be able to see the advance calculation screen

