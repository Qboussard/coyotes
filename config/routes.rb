Rails.application.routes.draw do
  get 'easter/index'

  namespace :admin do
  get 'teams/index'
  end

  namespace :admin do
  get 'teams/new'
  end

  namespace :admin do
  get 'players/index'
  end

  namespace :admin do
  get 'players/edit'
  end

  namespace :admin do
  get 'players/new'
  end

  namespace :admin do
  get 'users/index'
  end

  namespace :admin do
  get 'users/edit'
  end

  get 'sponsor/index'

  get 'tournament/index'

  get 'tournament/show'

  get 'rules/index'

  get 'club/index'

  devise_for :users
  devise_for :models

  get 'articles/index'

  get 'articles/show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  root 'articles#index'

  resources :articles, only: [:index, :show]
  resources :club, only: [:index]
  resources :rules, only: [:index]
  resources :tournament, only: [:index, :show]
  resources :sponsor, only: [:index]
  resources :easter, only: [:index]


  namespace :admin do
    get '/' => 'articles#index'
    resources :dashboard, only: [:index]
    resources :articles, except: [:show]
    resources :users, except: [:show]
    resources :players, except: [:show]
    resources :tournaments, except: [:show]
    resources :matches, except: [:show]
    resources :presences, except: [:show]
    resources :teams, except: [:show]
  end
  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
