Rails.application.routes.draw do
  root to: "home#start"
    
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
end
