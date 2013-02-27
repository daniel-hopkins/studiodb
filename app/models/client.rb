class Client < ActiveRecord::Base
  attr_accessible :name
  
  has_many :jobs
  belongs_to :job
end
