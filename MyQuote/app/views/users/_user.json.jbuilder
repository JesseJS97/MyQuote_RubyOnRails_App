json.extract! user, :id, :fname, :surname, :email, :IsAdmin, :password_digest, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
