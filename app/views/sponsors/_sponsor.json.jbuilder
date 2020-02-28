json.extract! sponsor, :id, :name, :logoUrl, :linkUrl, :sponsorship_level_id, :active, :description
json.url sponsor_url(sponsor, format: :json)
