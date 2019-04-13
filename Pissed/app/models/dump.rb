class Dump < ApplicationRecord
    has_many :image_dumps
    has_many :file_attachmens_dumps
    validates :author, :title, :body, presence: true
    validates :title, length: {maximum: 40}
    validates :body, length: {maximum: 150}
end