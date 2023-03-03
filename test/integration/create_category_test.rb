require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test "the truth" do
    get "/categories/new"
    assert_response :success
  end
end
