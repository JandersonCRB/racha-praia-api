Rails.application.routes.draw do
devise_for :users
	namespace :v1, defaults: { format: :json } do
		resources :players
		resource  :sessions, only: [:create, :destroy]
		resources :matches
	end
end
