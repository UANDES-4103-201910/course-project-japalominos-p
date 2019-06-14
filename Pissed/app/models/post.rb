class Post < ApplicationRecord
    belongs_to :user
    has_many_attached :images
    has_many_attached :files
    acts_as_votable
    has_many :image_posts
    has_many :file_attachments
    has_many :comments
    has_many :users, through: :comments
    has_many :inappropietes
    has_many :users, through: :inappropietes
    has_many :shares
    has_many :users, through: :shares
    has_many :follows
    has_many :users, through: :follows
    has_many :validation
    has_many :users, through: :validation
    validates :title, :body, presence: true
    validates :title, length: {maximum: 40}
    validates :body, length: {maximum: 150}

    
    
end