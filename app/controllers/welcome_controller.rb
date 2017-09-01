class WelcomeController < ApplicationController
	#root page and form of movie booking
	def index
		@booking = Booking.new
	end
end
