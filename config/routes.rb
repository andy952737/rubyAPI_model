Rails.application.routes.draw do 
  
  #靜態頁面  
  namespace :v2 do  
    get 'public_test',to: 'public#index'   
  end 

  post 'authenticate', to: 'authentication#authenticate' 
  get 'index', to: 'authentication#index'
  get 'show', to: 'authentication#show'  

end 
