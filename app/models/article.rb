# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :parts
  has_many :categories, through: :parts
end
