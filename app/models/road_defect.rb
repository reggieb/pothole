class RoadDefect < ActiveRecord::Base
  attr_accessible :description, :diameter, :location, :reporter_id
  
  belongs_to :reporter, :class_name => 'User'
  
  delegate :name, :to => :reporter, :prefix => true, :allow_nil => true
end
