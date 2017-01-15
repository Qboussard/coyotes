class Calendar < ActiveRecord::Base
	validates_presence_of :date, :event
	validates_length_of :event, maximum: 160
end
