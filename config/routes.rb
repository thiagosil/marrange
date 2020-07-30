# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'budgets#show'

  resources :expenses
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
