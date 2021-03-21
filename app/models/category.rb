# frozen_string_literal: true

class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :parts
  has_many :articles, through: :parts
end
