Rails.application.routes.draw do
	
  get 'users/new'
  root 'static_pages#home'
  get  '/help',    		to: 'static_pages#help'
  get  '/about',   		to: 'static_pages#about'
  get  '/contact', 		to: 'static_pages#contact'
  get  '/pdf_context', 	to: 'static_pages#pdf_context'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
