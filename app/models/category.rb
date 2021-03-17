# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :parts
  has_many :articles, through: :parts
end
