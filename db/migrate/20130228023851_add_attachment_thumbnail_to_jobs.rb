class AddAttachmentThumbnailToJobs < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    drop_attached_file :jobs, :thumbnail
  end
end
