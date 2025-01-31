Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :admins
  get "up" => "rails/health#show", as: :rails_health_check

  get admin: "admin#index"
end
