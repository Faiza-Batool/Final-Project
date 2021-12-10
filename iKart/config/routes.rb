Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/', {to: 'welcome#index', as: 'root'}) 
  get('/terms', {to: 'welcome#terms', as: 'terms'}) 
  get('/condition', {to: 'welcome#condition', as: 'condition'})
  get('/privacy', {to: 'welcome#privacy', as: 'privacy'}) 
  get('/contact_us', {to: 'welcome#contact_us', as: 'contact_us'}) 
  get('/about_us', {to: 'welcome#about_us', as: 'about_us'}) 
  get('/blog', {to: 'welcome#blog', as: 'blog'}) 

  # resources :brands, only:[:index, :show] do
  #   resources :types, only:[:index, :show] do
  #     resources :products, only:[:index, :show] 
  #   end
  # end

  resources :brands, only:[:index, :show] 
  resources :types, only:[:index, :show] 

  resources :products, only:[:index, :show] do
    resources :reviews, only:[:create, :destroy, :update, :edit]
    resources :likes, shallow: true, only:[:create, :destroy]
    get :liked, on: :collection
    
  end

  resources :carts, shallow: true, only:[:show] do 
    resources :items, shallow: true, only:[:create, :destroy]   
  end

  resources :payments, only: [:new, :create] 
  get('/payments/complete', {to: 'payments#complete'}) 

  resources :users, only:[:new, :create, :show] 

  resource :session, only:[:new, :create, :destroy]
     
  get('/auth_redirect', {to: 'application#authenticate_user!', as: 'auth'}) 
end
