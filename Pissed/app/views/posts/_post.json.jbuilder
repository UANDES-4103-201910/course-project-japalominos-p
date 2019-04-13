json.extract! post, :id, :title, :body, :city, :country, :gps_location, :privacy, :visible, :mark, :created_at, :updated_at
json.url post_url(post, format: :json)
