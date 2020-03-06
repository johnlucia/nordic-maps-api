class RenameCoordinatesColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :trails, :coordinates, :coordinates_json
  end
end
