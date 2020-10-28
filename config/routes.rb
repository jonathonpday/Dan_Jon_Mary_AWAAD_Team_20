Rails.application.routes.draw do
  get 'country_gdp/index'
  resources :years
  resources :countries

  get 'years/index'
  root 'years#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
