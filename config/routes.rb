Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  devise_for :views
end
