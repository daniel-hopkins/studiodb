class Job < ActiveRecord::Base
  attr_accessible :date, :invoiced, :invoicenumber, :name, :notes, :public, :rawhd, :tifhd

  belongs_to :client
  has_one :client
end
