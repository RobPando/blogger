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
	resources :authors
	resources :author_sessions, only: [ :new, :create, :destroy ]

	get 'login' => 'author_sessions#new'
	get 'logout' => 'author_sessions#destroy'
end
