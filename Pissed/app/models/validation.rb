class Validation < ApplicationRecord
    belongs_to :user
    belongs_to :post
    validates :post_id, uniqueness: true
    validates :user_id, uniqueness: true
end