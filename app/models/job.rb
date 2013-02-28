class Job < ActiveRecord::Base
  attr_accessible :date, :invoiced, :invoicenumber, :name, :notes, :public, :rawhd, :tifhd, :client_id, :thumbnail

  belongs_to :client

  has_attached_file :thumbnail, :styles => {:original => '150x150>'},
                    :url => "/assets/jobs/job_thumbnails/:id.:extension",
                    :path => ":rails_root/public/assets/jobs/job_thumbnails/:id.:extension"
end
