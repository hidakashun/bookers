Rails.application.routes.draw do
  resources :books
  get "/" => 'homes#top'
  root to: 'home#top'

end