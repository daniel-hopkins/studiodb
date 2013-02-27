class AddFolderToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :folder, :string
  end
end
