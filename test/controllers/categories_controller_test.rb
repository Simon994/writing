# frozen_string_literal: true

require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @category_one = categories(:magazines)
    @category_two = categories(:news)
  end

  test 'should get index, as categories_path and assign instance variable to view' do
    get categories_path
    assert_response :success
    assert_not_nil assigns(:categories)
    assert_equal Category.all, assigns(:categories)
  end

  test 'index template renders' do
    get categories_path
    assert_template 'categories/index'
  end

  test 'index includes both categories' do
    skip('to write')
    get categories_path
  end

  test 'should show category' do
    get category_path(@category_one)
    assert_response :success
  end
end
