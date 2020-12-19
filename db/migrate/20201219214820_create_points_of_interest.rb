class CreatePointsOfInterest < ActiveRecord::Migration[6.0]
  def change
    create_table :points_of_interest do |t|
      t.string :name
      t.string :uid
      t.text :description
      t.boolean :active
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
