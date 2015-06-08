Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # root 'layouts#index'

  #homepage routes
  get "/" => "users#home"


  #Admin routes
  get "/admin" => "admin#home"
  #kadikoy routes with admin
  get "/kadikoys/:id/edit" => "admin#home"
  patch "/kadikoys/:id" => "admin#update"
  put "/kadikoys/:id" => "admin#update"
  #Hisar_ustu_bebeks routes with admin
  get "/hisar_ustu_bebeks/:id/edit" => "admin#home"
  patch "/hisar_ustu_bebeks/:id" => "admin#update"
  put "/hisar_ustu_bebeks/:id" => "admin#update"
  #taksims routes with admin
  get "/taksims/:id/edit" => "admin#home"
  patch "/taksims/:id" => "admin#update"
  put "/taksims/:id" => "admin#update"

  ###########################################

  #Sign Up Log in Save, Retrieve and Edit Routes
  #initially save user to database
  #Sign Up - in Users
  post "/signup" => "users#user_signup_post"
  get "/signup" => "users#signup"

  #Login
  post "/login" => "sessions#create"
  get "/login" => "users#login"

  #Logout
  delete "/logout" => "sessions#destroy"


#######################################
######################################
  get "/demo/signup" => "users#demo"
  #users routes
  get "/profile" => "users#profile"
  post "/profile" => "users#update_prof"
  get "/users/:id" => "users#profile"



  get "/error" => "users#error"

  #sessions routes
  post "sessions" => "sessions#create"
  post "sessions" => "users#create"
  post "sessions" => "sessions#destroy"


  #Vocabs routes
  get "/vocab" => "vocabs#vocab_main"
  get "vocab/:id" => "vocabs#search"



  # #Hisar_ustu_bebeks routes
  # get "/hisarustubebek" => "hisar_ustu_bebeks#index"
  #
  # #Kadikoys routes
  # get "/kadikoy" => "kadikoys#index"
  #
  # #Taksims routes
  # get "/taksim" => "taksims#index"







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
