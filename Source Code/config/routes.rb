# ==============================================================================
# Filename: routes.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `routes.rb` file defines the URL dispatching map for the RAILSFRIENDS 
# application. It routes incoming HTTP requests to the appropriate 
# controller actions.
#
# Architecture:
# - Root: Maps `/` to `friends#index`.
# - Resources: Defines RESTful routes for `friends`.
# - Authentication: Mounts `devise_for` users.
# ==============================================================================

Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get 'home/index'
  get 'home/about'
  # root 'home#index'
  root 'friends#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
