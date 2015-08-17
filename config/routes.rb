Rails.application.routes.draw do
  
  resources :images, except: :show

  root 'images#index'

  post '/images/uploadState' => 'images#uploadState'
end
