class Shot < ActiveRecord::Base
  attr_accessible :date, :description, :graduationcurve, :height, :lens, :notes, :printed, :tonalrange, :job_id, :image

  belongs_to :job

  mount_uploader :image, ShotImageUploader

  before_create :default_name

  def default_name
    self.description ||= File.basename(image.filename, '.*').titleize if image
  end

end
