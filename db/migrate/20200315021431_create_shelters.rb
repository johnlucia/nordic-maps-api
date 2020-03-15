class CreateShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :uid
      t.text :description
      t.boolean :active
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end

    execute("ALTER SEQUENCE junctions_id_seq START with 1000 RESTART;")
  end
end
