json.sponsors @sponsors, :id, :name, :logo_url, :link_url, :description

json.welcome_content @welcome_content, :id, :position, :heading, :body, :link_text, :link_url

json.trails @trails, :id, :uid, :name, :color, :length, :level, :description, :coordinates

json.ungroomed @ungroomed, :id, :uid, :name, :color, :length, :level, :description, :coordinates

json.snowshoe @snowshoe, :id, :uid, :name, :color, :length, :level, :description, :coordinates

json.junctions @junctions, :id, :name, :coordinate, :kind

json.shelters @shelters, :id, :uid, :name, :description, :coordinate, :kind

json.points_of_interest @points_of_interest, :id, :uid, :name, :description, :icon, :color, :size, :coordinate, :kind

json.parking @parking, :id, :uid, :name, :description, :coordinate, :kind