Http::Application.routes.draw do
  root "home#index"

  resource :request_methods, only: [] do
    collection do
      get :index
      get :get
      post :post
      put :put
      delete :delete
    end
  end
   
  resource :http_statuses, only: [] do
    collection do
      get :index
      get :success_200
      get :redirection_301
      get :redirection_302
      get :redirection_304_etag
      get :redirection_304_last_modified
      get :client_error_401_unauthorized
      get :client_error_403_forbidden
      get :server_error_500_internal_server_error
      get :server_error_503_service_unavailable
    end
  end

  resource :http_headers, only: [] do
    collection do
      get :index
      get :accept_language
      get :cache_control_none
      get :cache_control_max_age
      get :cache_control_no_cache
    end
  end

  # resource :request_methods, only: [] do
  # resource :request_methods, only: [:index] do
  #   collection do
  #     get :request_get
  #     head :request_head

  #   end
  # end

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
