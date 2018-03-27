Rails.application.routes.draw do
  #devise_for :users, :controllers => {:registrations => "users/registrations"}
  #root 'users/sign_up'
  # devise_scope :user do
  #   authenticated :user do
  #     root :to => 'devise/registrations#new'
  #   end
  #   unauthenticated :user do
  #     root :to => 'devise/registrations#new', as: :unauthenticated_root
  #   end
  # end
  resources :candidates
  resources :employees
  resources :companies
  root :to => "candidates#index"
end
