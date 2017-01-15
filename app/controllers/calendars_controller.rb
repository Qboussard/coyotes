class CalendarsController < ApplicationController
	def index
			@events = Calendar.order('date asc')
	end
end
