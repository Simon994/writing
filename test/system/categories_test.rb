# frozen_string_literal: true

require 'application_system_test_case'

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = categories(:magazines)
  end

  test 'visiting the index' do
    visit categories_path
    assert_selector 'h2', text: 'Writing'
    assert_selector 'h3', text: 'Explore my written work'
  end

  test 'showing a category' do
    visit category_path(@category)
    assert_selector 'h3', text: @category.name
  end

  test 'click on category changes path to appropriate show page' do
    @factory_category = create(:category)
    @factory_article = create(:article)
    @factory_category.articles << @factory_article

    visit categories_path
    click_on @factory_category.name
    assert_current_path category_path(@factory_category)
    # assert page.has_content?(@one.title)
  end
end
