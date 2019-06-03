class Dump < ApplicationRecord
    has_many :image_dumps
    has_many :file_attachmens_dumps
    has_many_attached :images
    has_many_attached :files
    validates :author, :title, :body, presence: true
    validates :title, length: {maximum: 40}
    validates :body, length: {maximum: 150}
end