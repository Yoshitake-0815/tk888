Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]

  resources :shindans

  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
  
  
  get "users" => "users#show"

  get 'manhattans' => 'manhattans#manhattan'
  get 'brons' => 'brons#bron'
  get 'queens' => 'queens#queen'
  get 'statenislands' => 'statenislands#statenisland'
  get 'brooklyns' => 'brooklyns#brooklyn'
 
  root 'tweets#top'

  end