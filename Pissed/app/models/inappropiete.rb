class Inappropiete < ApplicationRecord
    belongs_to :user
    belongs_to :post
    validates :justification, presence: true, length: {maximum: 150}, format: { with: /\A[a-zA-Z0-9_\-]+\z/, message: "only allows letters and numbers"}
    validates :flag, absence: true
end