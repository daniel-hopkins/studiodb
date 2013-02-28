class AddThumbnailToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :thumbnail, :string
  end
end
