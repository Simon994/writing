# frozen_string_literal: true

class Part < ApplicationRecord
  belongs_to :category
  belongs_to :article
end
