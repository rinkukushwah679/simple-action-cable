Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount ActionCable.server => '/cable'
  resources :artiles
  root "artiles#index"
  get "date_record", to: "artiles#date_record"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
