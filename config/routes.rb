Rails.application.routes.draw do
 


  devise_for :users

   devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  # namespace :admin do
resources :users

#  end
  
   
    
#  root 'pages#top'
root 'users#index'
  get'/top' => 'pages#top'
  get'/about' => 'pages#about'
  get'/access' => 'pages#access'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

