# frozen_string_literal: true

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  setup do
    @category = categories(:magazines)
  end

  test 'category_count' do
    assert_equal 2, Category.count
    create(:category)
    assert_equal 3, Category.count
  end

  test 'should error when saving category with no name' do
    assert_not Category.new(name: nil).save
  end

  test 'category saves' do
    assert Category.new(name: 'Interesting topic').save
  end

  test 'associate category with article' do
    @factory_category = create(:category)
    @factory_article = create(:article)
    @factory_category.articles << @factory_article
    assert_equal 1, @factory_category.articles.length
  end
end
