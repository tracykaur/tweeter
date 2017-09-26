Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
	root 'tweets#index'
  	authenticated :user do
        root :to => 'tweets#show'
    end

  resources :tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
