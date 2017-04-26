json.extract! user, :id, :username, :bio, :age, :email, :profile_pic, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
