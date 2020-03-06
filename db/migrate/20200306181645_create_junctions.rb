class CreateJunctions < ActiveRecord::Migration[6.0]
  def change
    create_table :junctions do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.boolean :active

      t.timestamps
    end

    execute("ALTER SEQUENCE junctions_id_seq START with 1000 RESTART;")
  end
end
