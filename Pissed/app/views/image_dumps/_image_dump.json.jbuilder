json.extract! image_dump, :id, :url, :created_at, :updated_at
json.url image_dump_url(image_dump, format: :json)
