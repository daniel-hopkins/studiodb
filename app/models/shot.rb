class Shot < ActiveRecord::Base
  attr_accessible :date, :description, :graduationcurve, :height, :lens, :notes, :printed, :tonalrange
end
