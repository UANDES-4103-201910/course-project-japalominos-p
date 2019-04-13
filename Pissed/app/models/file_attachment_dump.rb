class FileAttachmentDump < ApplicationRecord
    validates :url, presence: true
end
