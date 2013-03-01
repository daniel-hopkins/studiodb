class Shot < ActiveRecord::Base
  attr_accessible :date, :description, :graduationcurve, :height, :lens, :notes, :printed, :tonalrange, :job_id, :image

  belongs_to :job

  mount_uploader :image, ShotImageUploader
end
