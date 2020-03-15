class AddUidToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :uid, :string
  end
end
