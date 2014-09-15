Rails.application.routes.draw do
  get 'stuff/index'
  root 'stuff#index'
end
