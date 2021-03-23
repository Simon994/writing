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

  test 'should get index, as categories_path, and assign categories instance variable to view' do
    get categories_path
    assert_response :success
    assert_not_nil assigns(:categories)
    assert_equal Category.all, assigns(:categories)
  end

  test 'index template renders' do
    get categories_path
    assert_template 'categories/index'
  end

  test 'index includes the same number of links as there are number of categories' do
    get categories_path
    assert_select('div.category') do |_element|
      assert_select 'a', Category.all.length
    end
  end

  test 'should show category' do
    get category_path(@category_one)
    assert_response :success
  end

  test 'show template renders' do
    get category_path(@category_two)
    assert_template 'categories/show'
  end
end
