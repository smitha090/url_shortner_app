Rails.application.routes.draw do
  root to: 'links#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/links' => 'links#create'
  
  get '/:short_url', to: 'links#show'
  scope '/:short_url' do
    resources :stats
  end
  

    
  
  


end
