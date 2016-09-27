class Location < ActiveRecord::Base
  
	validates :name, presence: true

	belongs_to :tides
end
