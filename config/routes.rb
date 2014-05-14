ResumeApp::Application.routes.draw do

  resources :users

  root  'static_pages#home'
  resources :schools

  resources :positions

  resources :companies

  resources :people

  resources :skills

  resources :skillsets, only: [:create, :destroy]

  resources :information

  resources :recommendations, only: [:create, :destroy]

  resources :experiences, only: [:create, :destroy]

  resources :educations, only: [:create, :destroy]

  resources :resume_infos, only: [:create, :destroy]

  resource :sessions, only: [:new, :create, :destroy]
  match '/signup',    to: 'users#new',              via: 'get'
  match '/signin',    to: 'sessions#new',           via: 'get'
  match '/signout',   to: 'sessions#destroy',       via: 'delete'
  match '/generate',  to: 'static_pages#generate',  via: 'get'


  match '/experience', to: 'experiences#index',     via: 'get'
  match '/resume', to: 'resume_infos#index', via: 'get'
  match '/education',  to: 'educations#index', via: 'get'
  match '/skillset',  to: 'skillsets#index', via: 'get'


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
