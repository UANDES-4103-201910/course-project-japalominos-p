json.extract! file_attachment_dump, :id, :url, :created_at, :updated_at
json.url file_attachment_dump_url(file_attachment_dump, format: :json)
