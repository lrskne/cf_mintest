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

Basically using red-green-refactor -- this is the end result

**test/models/category_test.rb**

`require "test_helper"
class CategoryTest _<_ ActiveSupport::TestCase
  def setup
    @category = Category.new name: "Home"
  end
  def test_valid
    assert @category.valid?
  end
  def test_invalid_without_name
    @category.name = nil
    refute @category.valid?
  end
  def test_invalid_without_long_name
    @category.name = "A"
    refute @category.valid?
  end
end`


**test/controllers/categories_controller_test.rb**
`require "test_helper"

class CategoriesControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_response :success
    assert_select 'form'
  end

  def test_create
    assert_difference "Category.count" do
      post :create, category: {name: "Kitchen"}
    end
    assert_redirected_to categories_url
    assert_equal 'Category created!', flash[:notice]
  end

  def test_create_fails
    assert_no_difference "Category.count" do
      post :create, category: {name: "" }
    end
    assert_template "new"
  end

  def test_index
     get :index
     assert_response :success
   end

end # end of class`
