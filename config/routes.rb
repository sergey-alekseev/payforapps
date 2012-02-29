Payforapps::Application.routes.draw do

  devise_for :users, path_names: { sign_up: 'register', sign_in: 'login', sign_out: 'logout' }
	resources :users, only: :show

  root :to => "static_pages#index"

  match '/profile',    to: 'static_pages#profile'
  match '/dashboard',   to: 'static_pages#dashboard'
  match '/add', to: 'static_pages#add'
  match '/purchases',    to: 'static_pages#purchases'
  match '/thankyou',   to: 'static_pages#thankyou'
  match '/error', to: 'static_pages#error'
  match '/paypal',    to: 'static_pages#paypal'
  match '/purchaseorder',   to: 'static_pages#purchaseorder'
  match '/settings', to: 'static_pages#settings'
	match '/buyitlink', to: 'static_pages#buyitlink'

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"
end