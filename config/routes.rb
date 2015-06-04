Rails.application.routes.draw do

  post 'customers/create'
  patch 'customers/update'

  get 'customers/register'

  get 'customers/edit'

  get 'customers/view'

  get 'customers/delete'

  get 'customers/show'

  get 'orders/show'

  get 'orders/new'

  get 'orders/add'

  get 'orders/edit'

  get 'orders/update'

  get 'orders/delete'

  get 'meals/show'

  get 'meals/new'

  get 'meals/add'

  get 'meals/edit'

  get 'meals/update'

  get 'meals/delete'

  get 'category/show'

  get 'category/new'

  get 'category/add'

  get 'category/edit'

  get 'category/update'

  get 'category/delete'

  get 'items/show'

  get 'items/new'

  get 'items/add'

  get 'items/edit'

  get 'items/update'

  get 'items/delete'

  get 'items/show'

  get 'items/new'

  post 'items/create'

  get 'items/edit'

  post 'items/put'

  delete 'items/delete'

  #menu routes

  get 'menus/edit/:id' => 'menus#show'
  post 'menus/edit/:id' => 'menus#save_item'

  #resources :menus
  get 'meals/show'

  get 'meals/new'

  get 'meals/create'

  get 'meals/edit'

  get 'meals/put'

  get 'meals/destroy'

  resources :defaults
  resources :orders

  root 'static_pages#home'

  get 'static_pages/about'

  get 'static_pages/contact'

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
