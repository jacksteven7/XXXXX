json.array!(@posts) do |post|
  json.extract! post, :id, :legend
  json.url post_url(post, format: :json)
end
