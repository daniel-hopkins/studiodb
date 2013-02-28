class Job < ActiveRecord::Base
  attr_accessible :date, :invoiced, :invoicenumber, :name, :notes, :public, :rawhd, :tifhd, :client_id

  belongs_to :client
end
