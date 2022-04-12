require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "Travel")
    @category2 = Category.create(name: "Music")
  end

  test "should show categories listing" do
    get "/categories"
    assert_select "a[href=?]", category_path(@category), text: "View"
    assert_select "a[href=?]", category_path(@category2), text: "View"
  end
end
