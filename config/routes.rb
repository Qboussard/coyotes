Rails.application.routes.draw do
	devise_for :users

	root 'articles#index'

  namespace :admin do
		get '/' => 'dashboard#index'
    get 'articles/index'
  	get 'teams/index'
		get 'teams/new'
		get 'players/index'
		get 'players/edit'
		get 'players/new'
		get 'users/index'
		get 'users/edit'

		resource :dashboard, only: [:index]
		resources :articles, except: [:show]
		resources :users, except: [:show]
		resources :players, except: [:show]
		resources :tournaments, except: [:show]
		resources :matches, except: [:show]
		resources :presences, except: [:show]
		resources :teams, except: [:show]
		resources :events, except: [:show]
  end

	get 'easter/index'
  get 'sponsor/index'
  get 'tournament/index'
  get 'tournament/show'
  get 'rules/index'
  get 'club/index'
	get 'articles/index'
	get 'articles/show'

	resources :events, only: :index
  resources :articles, only: [:index, :show]
  resources :club, only: [:index]
  resources :rules, only: [:index]
  resources :tournament, only: [:index, :show]
  resources :sponsor, only: [:index]
  resources :easter, only: [:index]
  resources :event, only: [:index]



end
