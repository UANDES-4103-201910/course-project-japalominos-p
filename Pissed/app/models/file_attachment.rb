class FileAttachment < ApplicationRecord
    validates :url, presence: true
end
