Rails.application.routes.draw do

	root to: 'articles#index'
	resources :articles do
		member do
			put 'remove_image'
		end
		resources :comments
		resources :attachments
	end
	resources :tags
end
