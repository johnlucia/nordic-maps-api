class CreateSponsorshipLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :sponsorship_levels do |t|
      t.string :name

      t.timestamps
    end
  end
end
