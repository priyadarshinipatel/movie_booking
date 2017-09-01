class BookingsController < ApplicationController
	def change_time
		@time = params["date"].to_date
	end
	def change_seats
		@seats = []
		bookings = Booking.includes(:seats).where(movies_id: params["movie_id"], show_date: params["date"], shows_id: params["shows"])
		bookings.map{|a| p @seats << a.seats}
		@seats.flatten!
		@seats.uniq!
		@seats = Seat.all - @seats
	end

	def change_movie
	end 

	def index
		@bookings = Booking.all.order("show_date asc")
	end

	def create
		params[:booking][:seat_ids] = params[:booking][:seat_ids].split(',')
		params[:h_shows].split(',').each do |show|
			params[:booking][:shows_id] = show 
			booking = Booking.create(booking_params)
		end
		flash[:success] = "Successfully booked."
		redirect_to :root
	end

	protected
	def booking_params
		params.require(:booking).permit(:movies_id, :show_date, :shows_id, :seat_ids => [])
	end 
end
