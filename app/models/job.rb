class Job < ActiveRecord::Base
  attr_accessible :date, :invoiced, :invoicenumber, :name, :notes, :public, :rawhd, :tifhd, :client_id, :thumbnail

  belongs_to :client

  has_attached_file :thumbnail
end
