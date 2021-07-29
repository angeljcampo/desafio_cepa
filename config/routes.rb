Rails.application.routes.draw do
  resources :jobs
  resources :magazines
  resources :oenologists
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :strains
  resources :wines
  root "wines#index"
end
