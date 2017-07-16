json.extract! userdetail, :id, :user_id, :bio, :artist_type, :profile_photo, :fblink, :ytlink, :soundcloud, :created_at, :updated_at
json.url userdetail_url(userdetail, format: :json)
