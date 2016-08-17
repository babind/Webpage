Rails.application.routes.draw do

  	devise_for :users
			scope "/admin" do
  	resources :users
	end
	 root to: "home#index"
	 
	 resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
