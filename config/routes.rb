Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#welcome'

  get  'users/new',     to: "users#new",           as: "new_user"
  post 'users',         to: "users#create",        as: "users"

  get   'sessions/new', to: "sessions#new",    as: "new_session"
  post  'sessions',     to: "sessions#create", as: "sessions"
  delete'sessions',     to: "sessions#destroy"

  get   'goals',        to: "goals#index",     as: "goals"
  post 'goals',         to: "goals#create"
  get 'goals/new',      to: "goals#new",       as: "new_goal"
  get 'goals/:goal_id', to: "goals#show",      as: "goal"


  post 'requests',      to: "requests#create",    as: "requests"

  post 'participations',      to: "participations#create",    as: "participations"


  get '/api/goals',  to: 'api/goals#index'



 #      Prefix Verb   URI Pattern                    Controller#Action
 #     tools GET    /tools(.:format)               tools#index
 #           POST   /tools(.:format)               tools#create
 #  new_tool GET    /tools/new(.:format)           tools#new
 # edit_tool GET    /tools/:id/edit(.:format)      tools#edit
 #      tool GET    /tools/:id(.:format)           tools#show
 #           PATCH  /tools/:id(.:format)           tools#update
 #           PUT    /tools/:id(.:format)           tools#update
 #           DELETE /tools/:id(.:format)           tools#destroy

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
