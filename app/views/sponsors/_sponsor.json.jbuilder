json.extract! sponsor, :id, :name, :logo_url, :link_url, :sponsorship_level_id, :active, :description
json.url sponsor_url(sponsor, format: :json)
