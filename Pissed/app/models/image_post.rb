class ImagePost < ApplicationRecord
    validates :url, presence: true
end
