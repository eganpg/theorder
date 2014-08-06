Rails.application.routes.draw do
  resources :customers do
    resources :mainorderboards  
  end

 resource :session, only: [:new, :create, :destroy]




  resources :logins
  
  resources :products
  

  get 'suborders/new' => 'suborders#new'

  get 'suborders' => 'suborders#index'

  get 'suborders/show'

  get 'suborders/create'

  get 'suborders/edit'

  get 'suborders/update'

  get 'suborders/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'logins' => 'logins#index'
  get 'logins/new' => 'logins#new'


  get 'customers' => 'customers#index'
  get 'customers/new' => 'customers#new'
  post 'customers/' => 'customers#create'




  get 'products' => 'products#index'

  get 'products/new' => 'products#new'




  get 'mainorderboards' => 'mainorderboards#index'

  get 'mainorderboards/new' => 'mainorderboards#new'


  get 'mainorderboards/destroy' => 'mainorderboards#destroy'



  
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
