json.array!(@list_invites) do |list_invite|
  json.extract! list_invite, :id, :list_id, :user_id, :email, :complete
  json.url list_invite_url(list_invite, format: :json)
end
