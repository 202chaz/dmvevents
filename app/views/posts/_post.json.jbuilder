json.extract! post, :id, :image_data, :title, :description, :embed_files, :category, :authord_id, :featured, :spotlighted, :created_at, :updated_at
json.url post_url(post, format: :json)
