class PointOfInterest < ApplicationRecord
  include Mappable

  DEFAULTS = {icon: "md-pin", size: 25, color: "black"}

  self.table_name = "points_of_interest"

  def icon_source
    Selectable.source_of(icon)
  end
end
