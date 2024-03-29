Rails.application.routes.draw do

   get '/login' => 'users#login'

   get '/login_session' => 'users#login_session'

   get '/logout' => 'users#logout'

   get '/signup' => 'users#signup'

   get '/register' => 'users#register'

   root 'posts#index'
   # as :root 와 같음

   get '/posts/index'

   get '/posts/new'

   post '/posts/create'

   get '/posts/show/:id' => 'posts#show'

   post '/posts/destroy/:id' => 'posts#destroy'

   get '/posts/edit/:id' => 'posts#edit'

   post '/posts/update/:id' => 'posts#update'

   get '/posts/:id/add_comment' => 'posts#add_comment'
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
