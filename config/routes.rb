Classroom::Application.routes.draw do



  resources :users_accesses

  resources :lgseatings

  #resources :loginseatings

  match '/login' => 'sessions#new', :as => :login
  match '/logout' => 'sessions#destroy', :as => :logout

  resources :login

  resources :users
  
  #match '/users/index' => 'users#index', :as => :users_index
  #match '/users/new' => 'users#new', :as => :newuser

  resources :usersaccess
  
  match '/users_accesses/index' => 'users_accesses#index', :as => :users_index
  match '/users_accesses/new' => 'users_accesses#new', :as => :newuser
  
  match '/seatings/index' => 'seatings#index', :as => :seating
  
  
  match '/loginseatings/new' => 'loginseatings#new', :as => :loginseatings_edit
  match '/loginseatings/' => 'loginseatings#index', :as => :loginseatings

  match '/lgseatings/' => 'lgseatings#index', :as => :loggedinseatings
  match '/lgseatings/new' => 'lgseatings#new', :as => :loggedinseatings_edit

  
  resources :loginseatings 
  resources :loggedinseatings
  resources :lgseatings
  
  resources :seatings
  resource :session  

  match '/msgs/new' => 'msgs#new', :as => :msgs_new
  resources :msgs  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  root :to => 'seatings#index'
  end
