class AddGroomedToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :groomed, :boolean
  end
end
