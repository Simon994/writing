# frozen_string_literal: true

require 'test_helper'

class PartTest < ActiveSupport::TestCase
  test 'create part using factory' do
    @factory_part = create(:part)
    assert_equal 1, Part.count
  end

  test 'connect article to category through factory' do
    @factory_part = create(:part)
    assert_equal 'A manually created factory article'.upcase, @factory_part.article.title
    assert_equal 'Beans and more beans', @factory_part.category.name
  end
end
