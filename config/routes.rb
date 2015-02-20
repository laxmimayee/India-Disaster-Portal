Srsfda::Application.routes.draw do
  

  get "home/disaster"
  get "home/apps"
  get "home/resources"
  get "home/network"
  get "home/aboutus"
  get "home/contact"
  get "home/work"
  get "home/valanteer"
  get "home/directory"
  resources :advertisements do 
    get 'preview', on: :collection
    get 'all', on: :collection
    get 'my', on: :collection
  end

  resources :news do 
    get 'preview', on: :collection
    get 'all', on: :collection
    get 'my', on: :collection
  end


  resources :articles do
    get 'preview', on: :collection
    get 'all', on: :collection
    get 'my', on: :collection
  end

   resources :jobs do 
    get 'preview', on: :collection
    get 'all', on: :collection
    get 'my', on: :collection
    get 'slider', on: :collection
  end


  get "optional/index"
  get "users/profile"
  get "users/index"
  get "users/show"
   get "users/settings"
  get "reports/index"
  get 'reports/db_upload'
    resources :reports
  #devise_for :users
  devise_for :users, controllers: { registration: 'registrations' }
  get "welcome/index"

   root 'jobs#slider'
   #root 'welcome#dashboard'
   get 'welcome/dashboard'
   get 'welcome/screener'
   get 'welcome/analytics'
   get 'welcome/optional'

   get '/users/subregion_options' => 'users#subregion_options'
   get '/payments/complete_payment' => 'payments#complete_payment'

resources :optionals do
  collection { post :import }
end 

resources :products do
  collection { post :import }
end 
resources :products do
    collection do
      match 'search' => 'products#search', via: [:get, :post], as: :search
    end
  end
   resources :carts do
    collection do
      
      get :license_agrement
    end
  end
end
