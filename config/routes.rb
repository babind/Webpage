Rails.application.routes.draw do
  get 'patient/edit'

  devise_for :users
	
	scope "/admin" do
  	resources :users do 
  		get :handle_promotion
  	end
	end
	
	get 'home/choose_site', to: 'home#choose_site', :as => :choose_site

	root to: "home#index"
		 
	resources :users

	resources :patients
	 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
