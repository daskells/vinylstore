json.extract! item, :id, :artist, :title, :price, :image_url, :genre, :label, :year, :created_at, :updated_at
json.url item_url(item, format: :json)
