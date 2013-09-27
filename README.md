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

