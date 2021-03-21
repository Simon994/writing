# frozen_string_literal: true

class AddContraintsToArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :title
    add_column :articles, :title, :string, null: false

    remove_column :articles, :link
    add_column :articles, :link, :string, null: false

    remove_column :articles, :summary
    add_column :articles, :summary, :string, null: false
  end
end
