class PointOfInterest < ApplicationRecord
  include Mappable

  self.table_name = "points_of_interest"
end
