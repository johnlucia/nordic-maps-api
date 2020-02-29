json.extract! welcome_content, :id, :heading, :body, :link_text, :link_url, :position, :active, :created_at, :updated_at
json.url welcome_content_url(welcome_content, format: :json)
