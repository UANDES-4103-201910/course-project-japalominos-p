class CommentOfComment < ApplicationRecord
    belongs_to :user
    belongs_to :comment
    validates :body, presence: true
    validates :body, length: {maximum: 150}
end