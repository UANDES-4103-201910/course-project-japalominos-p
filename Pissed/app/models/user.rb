class User < ApplicationRecord
    has_one :profile
    has_many :posts
    has_many :comments
    has_many :post, through: :comments
    has_many :inappropietes
    has_many :post, through: :inappropietes
    has_many :shares
    has_many :post, through: :shares
    has_many :follows
    has_many :post, through: :follows
    has_many :validation
    has_many :post, through: :validation
    has_many :comment_of_comments
    has_many :comments, through: :comment_of_comments
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "only allows valid emails" }, uniqueness: true
    validates :nick_name, presence: true,  length: {maximum: 20}, format: { with: /\A[a-zA-Z0-9_\-]+\z/, message: "only allows letters and numbers"}, uniqueness: true
    validates :password, confirmation: true, presence: true, length: {maximum: 20}, format: { with: /\A[a-zA-Z0-9_\-]+\z/, message: "only allows letters and numbers"}
    validates :flags, :suspended, :admin, :geofence_ver, :geofence, :superadmin, absence: true
    
    
end
