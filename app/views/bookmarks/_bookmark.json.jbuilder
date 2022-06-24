json.extract! bookmark, :id, :link_name, :paste_url, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
