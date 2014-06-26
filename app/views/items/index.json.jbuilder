json.array!(@items) do |item|
  json.extract! item, :id, :list_id, :status_id, :name, :rank
  json.url item_url(item, format: :json)
end
