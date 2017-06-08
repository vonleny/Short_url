Rails.application.routes.draw do
 	get 'home/index'

  		# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root 'home#index'
  	get '/:id', to: 'urls#show'
	resources :urls
	get 'alt/:short', to: 'urls#alt'


end
