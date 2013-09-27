# Basic minitest demo

1.  rails new cf-minitest --skip-test-unit
2.  Add to Gemfile
    `group :development, :test do
      gem "minitest-rails", git: "https://github.com/blowmage/minitest-rails.git"
      gem "minitest"
      gem "ZenTest"
    end`
3. rails generate mini_test:install
4. rails g model category name:string
5. rails g controller category --no-helper
6. rake db:migrate
7. rake minitest
8. At command line: gem install ZenTest
9. At command line for continuous testing type: autotest

Now start adding test to these files:

**test/controllers/categories_controller_test.rb**
**test/models/category_test.rb**

Basically using red-green-refactor -- this is the end result!


# The class assignment details for 7B.1 - Testing or Spec'ing  
Due Today by 11:59pm  Points 10  Submitting a website url  
Objective: Learn how to test.  
  
Note: Feel free to follow/copy the video lecture exactly. Why? Because this takes practice to get into a rhythm.

1) Create a new project following the directions on minitest-rails github page. Name it anything you want.  

2) Use Test Driven Development (TDD), or if you prefer Behavior Driven Development (BDD), to test:  

1 x Model  
1 x Controller with at an index, new, and create action.  
3) Confirm it works in the browser. If not, add the appropriate tests, implement the changes, and check it again in the browser.  

4) Commit your work and push it to github.  

5) Submit this assignment with:  

How hard was this 1-10? (10 being hard.)  
A well formed question.  
What did you choose tests or specs? Why?  
Did you use autotest?  
Hints:  

The lecture video covers the solution to this assignment.  
Remember:  
Write a failing test.    
Watch it fail.  
Implement the code to make it succeed.  
Refactor  
Go back to #1 for a new feature.  
 
