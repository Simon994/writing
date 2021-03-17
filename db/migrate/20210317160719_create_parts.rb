# frozen_string_literal: true

class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.belongs_to :category, index: true
      t.belongs_to :article, index: true
      t.timestamps
    end
  end
end
