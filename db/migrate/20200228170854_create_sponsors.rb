class CreateSponsors < ActiveRecord::Migration[6.0]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :logoUrl
      t.string :linkUrl
      t.integer :sponsorship_level_id
      t.boolean :active
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
