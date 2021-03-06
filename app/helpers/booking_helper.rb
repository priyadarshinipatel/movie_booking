module BookingHelper
	def valid_show_times(date)
		times = []		
		if date < Date.today
			return times
		elsif date > Date.today
			return Show.all.to_a
		else
			Show.all.each do |show|
				time = Time.current
				if show.show_time_start.strftime("%H:%M:%S").to_time > time
					times << show
				end
			end
			return times
		end
	end
end
