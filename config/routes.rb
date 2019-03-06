Rails.application.routes.draw do
	
  get 'users/new'
  root 'static_pages#home'
  get  '/help',    		     to: 'static_pages#help'
  get  '/about',   		     to: 'static_pages#about'
  get  '/contact', 		     to: 'static_pages#contact'
  get  '/new_model', 	     to: 'url_data_model#new'
  get  '/list',            to: 'url_data_model#create'
  
  resources :url_data_model
  
end
