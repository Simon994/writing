# frozen_string_literal: true

require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @category = categories(:magazines)
  end

  test 'should get index, as categories_path' do
    get categories_path
    assert_response :success
    assert_select 'h2', 'Writing'
    assert_select 'h3', 'Explore my written work'
  end

  test 'should show category' do
    get category_path(@category)
    assert_response :success
    assert_select 'h3', @category.name
  end
end
