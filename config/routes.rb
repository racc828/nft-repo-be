Rails.application.routes.draw do
  namespace :api do
		namespace :v1 do
			resources :users, :artists, :collections, :droptypes
      post '/sessions', to: 'sessions#create'
      get '/sessions/current_user', to: 'sessions#show'
		end
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
