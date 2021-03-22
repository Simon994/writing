# frozen_string_literal: true

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'category_count' do
    assert_equal 2, Category.count
    create(:category)
    create(:category)
    assert_equal 4, Category.count
  end
end
