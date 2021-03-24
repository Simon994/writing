# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :link, presence: true, uniqueness: true
  validates :summary, presence: true, uniqueness: true

  validate :validate_length_of_summary

  before_save :capitalize_article_title

  has_many :parts
  has_many :categories, through: :parts

  def capitalize_article_title
    self.title = title.upcase
  end

  def validate_length_of_summary
    errors.add(:summary, 'Length should be at least 40 and at most 200 characters') if summary.present? && ((summary.size < 40) || (summary.size > 200))
  end

  def as_json(_options = nil)
    hash = super(
      include: {
        categories: {
          except: %i[updated_at created_at id]
        }
      },
      except: %i[created_at updated_at]
    )

    hash.store(:article_title, hash.delete('title'))

    hash
  end
end
