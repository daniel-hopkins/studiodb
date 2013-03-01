class AddImageToShots < ActiveRecord::Migration
  def change
    add_column :shots, :image, :string
  end
end
