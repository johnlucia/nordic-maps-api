class AddPostionToSponsors < ActiveRecord::Migration[6.0]
  def change
    add_column :sponsors, :position, :integer
  end
end
