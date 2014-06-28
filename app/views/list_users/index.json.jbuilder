json.array!(@list_users) do |list_user|
  json.extract! list_user, :id, :user_id, :list_id
  json.url list_user_url(list_user, format: :json)
end
