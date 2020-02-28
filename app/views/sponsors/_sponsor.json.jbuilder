json.extract! sponsor, :id, :name, :logoUrl, :linkUrl, :sponsorshipLevelId, :active, :description
json.url sponsor_url(sponsor, format: :json)
