json.extract! user, :id, :nick_name, :email, :password, :flags, :suspended, :admin, :geofence_ver, :geofence, :superadmin, :created_at, :updated_at
json.url user_url(user, format: :json)
