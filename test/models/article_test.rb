# frozen_string_literal: true

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'article count' do
    assert_equal 2, Article.count
    create(:article)
    assert_equal 3, Article.count
  end

  test 'should error when saving article with no title' do
    assert_not Article.new(title: nil, link: 'example.com', summary: 'This is an example of a summary here. Some more words.').save
  end

  test 'should error when saving article with no link' do
    assert_not Article.new(title: 'Just an example', link: nil, summary: 'This is an example of a summary here. Some more words.').save
  end

  test 'should error when saving article with summary too short' do
    assert_not Article.new(title: 'Just an example', link: 'example.com', summary: 'This is a too-short example.').save
  end

  test 'should error when saving article with summary too long' do
    assert_not Article.new(title: 'Just an example', link: 'example.com',
                           summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                          when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                          It has survived not only five centuries, but also the leap into electronic typesetting,
                          remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                          sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like
                          Aldus PageMaker including versions of Lorem Ipsum.").save
  end
end
