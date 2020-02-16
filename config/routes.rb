Rails.application.routes.draw do
  resources :isits
  root 'isits#index'
end
