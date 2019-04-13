class Comment < ApplicationRecord
    has_many :comment_of_comments
    has_many :users, through: :comment_of_comments
    belongs_to :user
    belongs_to :post
    validates :body, presence: true
    validates :body, length: {maximum: 150}
end