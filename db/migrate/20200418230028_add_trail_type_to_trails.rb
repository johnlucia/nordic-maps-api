class AddTrailTypeToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :trail_type, :string
  end
end
