json.extract! profile, :id, :picture, :bio, :gps_location, :city, :country, :created_at, :updated_at
json.url profile_url(profile, format: :json)
