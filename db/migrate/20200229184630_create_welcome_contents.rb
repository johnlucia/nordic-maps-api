class CreateWelcomeContents < ActiveRecord::Migration[6.0]
  def change
    create_table :welcome_contents do |t|
      t.string :heading
      t.text :body
      t.string :link_text
      t.string :link_url
      t.integer :position
      t.boolean :active

      t.timestamps
    end
  end
end
