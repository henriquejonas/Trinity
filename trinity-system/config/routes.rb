TrinitySystem::Application.routes.draw do
	devise_for :users

	get "system/login"
	get "system/admin"

	root :to             => "system#login"
	
	match 'home-admin'   => "system#admin", :as => :admin
	
	
end
