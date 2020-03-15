json.sponsors @sponsors, :id, :name, :logo_url, :link_url, :description

json.welcome_content @welcome_content, :id, :position, :heading, :body, :link_text, :link_url

json.trails @trails, :id, :uid, :name, :color, :length, :level, :description, :coordinates

json.junctions @junctions, :id, :name, :coordinate

json.shelters @shelters, :id, :uid, :name, :description, :coordinate

json.parking @parking, :id, :uid, :name, :description, :coordinate