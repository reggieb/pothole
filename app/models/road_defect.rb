class RoadDefect < ActiveRecord::Base
  attr_accessible :description, :diameter, :location, :reporter_id
end
