Rails.application.routes.draw do
  
  resources :applicants do
    member do
      get :change
    end
  end
  resources :accountabilities
  resources :announcements
  get 'administrator/admin' #ano ine?

  resources :permissions do
    member do
      get :change
    end
  end
  #resources :permits
  get 'sessions/new'

  root 'pages#home'
  
  get '/', to: 'pages#home'
  get 'users/:id/accountability', to: 'users#user_accountability'
  get 'users/:id/violations', to: 'users#userViolations'
  get 'users/:id/submittedPermits', to: 'users#submittedPermits'
  
  get '/rules' => 'rules#show'
  get '/rules/download' => 'rules#download'
  
  get '/home' => 'pages#home'
  get '/admin' => 'administrator#admin'
  get '/announcements' => 'announcements#index'
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  get '/help', to: 'pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
  get '/login',   to: 'sessions#new'
  get '/apply', to: 'applicants#new'
  post '/login',   to: 'sessions#create'
  put '/permissions', to: 'permissions#permissionStatus'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  
 
  
  
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
