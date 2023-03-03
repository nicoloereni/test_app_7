# frozen_string_literal: true
require "test_helper"
class CategoryTest < ActiveSupport::TestCase

  test 'category is valid' do
    @category = Category.new(name: "sport")
    assert @category.valid?
  end
end
