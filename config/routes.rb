# frozen_string_literal: true

Rails.application.routes.draw do
  root 'categories#index', as: :categories
  get '/categories/:id' => 'categories#show', as: :category
  get '/articles' => 'articles#index', as: :articles
end
