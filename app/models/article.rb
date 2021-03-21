# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :link, presence: true, uniqueness: true
  validates :summary, presence: true, uniqueness: true

  validate :validate_length_of_summary

  has_many :parts
  has_many :categories, through: :parts

  def validate_length_of_summary
    errors.add(:summary, 'Length should be at least 40 and at most 200 characters') if summary.present? && ((summary.size < 40) || (summary.size > 200))
  end
end
