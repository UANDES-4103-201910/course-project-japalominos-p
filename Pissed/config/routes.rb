Rails.application.routes.draw do  
  get 'search/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations' }    
  resources :blacklists
  resources :dumps do
      resources :image_dumps
      resources :file_attachment_dumps
    end
  concern :file_attachmentable do
        resources :file_attachments
    end
  concern :image_postable do
        resources :image_posts
    end
  concern :profilable do
        resources :profiles
    end
  concern :commentable do
        resources :comments
    end
  concern :shareable do
        resources :shares
    end
  concern :followable do
        resources :follows
    end
  concern :comment_of_commentable do
        resources :comment_of_comments
    end
  concern :inappropietable do
        resources :inappropietes 
    end
  concern :validationable do
        resources :validations
    end
  concern :postable do
        resources :posts
    end
  resources :users, concerns: [:commentable, :shareable, :followable, :comment_of_commentable, :inappropietable, :validationable, :profilable, :postable]
  resources :posts, concerns: [:commentable, :shareable, :followable, :inappropietable, :validationable, :file_attachmentable, :image_postable]
  resources :comments, concerns: [:comment_of_commentable]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'starts#new'
    
  post '/login',    to: 'starts#create', as: :log_in
  delete '/log_out' => 'starts#destroy', as: :log_out
  
  get '/main_page' => 'main#index', as: :main      
    
  get '/sign_in' => 'registrations#new', as: :registrations
  post '/sign_in' => 'registrations#create', as: :sign_in
  
  patch '/update_profile' => 'profile#update', as: :update_profile
end
