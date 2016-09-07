Rails.application.routes.draw do
  get 'set_emails/new'

  get 'send_tweet/new'

  root 'home#index'

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks', 
  																	registrations: 'users/registrations', 
  																	:invitations => 'users/invitations' }

  #get '/auth/twitter/callback', to: 'home/index'
  get '/auth/twitter/callback', :controller => 'home', :action => 'index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match ':controller(/:action(/:id))', :via => [:get, :post]

  
end
