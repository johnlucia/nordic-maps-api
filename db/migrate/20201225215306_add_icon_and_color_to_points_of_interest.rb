class AddIconAndColorToPointsOfInterest < ActiveRecord::Migration[6.0]
  def change
    add_column :points_of_interest, :icon, :string
    add_column :points_of_interest, :color, :string
    add_column :points_of_interest, :size, :integer
  end
end
