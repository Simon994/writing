# frozen_string_literal: true

Rails.application.routes.draw do
  get '/categories' => 'categories#index'
  get '/categories/:id' => 'categories#show', as: :category
  get '/articles' => 'articles#index'
end
