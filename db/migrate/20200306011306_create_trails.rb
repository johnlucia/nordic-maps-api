class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :color
      t.string :length
      t.integer :level
      t.text :description
      t.json :coordinates
      t.boolean :active

      t.timestamps
    end
  end
end
