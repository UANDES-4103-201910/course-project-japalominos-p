json.extract! dump, :id, :author, :title, :body, :created_at, :updated_at
json.url dump_url(dump, format: :json)
