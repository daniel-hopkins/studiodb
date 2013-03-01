class AddJobIdToShots < ActiveRecord::Migration
  def change
    add_column :shots, :job_id, :integer
  end
end
