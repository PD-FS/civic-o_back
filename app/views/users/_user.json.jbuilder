json.extract! user, :id, :email, :name, :lastname, :birthday, :gender, :country, :city, :created_at, :updated_at
json.url user_url(user, format: :json)
