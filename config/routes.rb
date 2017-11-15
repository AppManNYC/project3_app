Rails.application.routes.draw do
  resources :websites
  resources :matthews
  root 'matthews#index'
end
