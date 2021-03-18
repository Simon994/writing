# frozen_string_literal: true

Rails.application.routes.draw do
  get '/categories' => 'categories#index'
end
