class Booking < ActiveRecord::Base
	belongs_to :movie, foreign_key: "movies_id", class_name: "Movie"
	belongs_to :show, foreign_key: "shows_id", class_name: "Show"
	has_and_belongs_to_many :seats
	accepts_nested_attributes_for :seats

	def remaining_time
		show_time = "#{show_date.to_date.strftime("%d/%m/%Y")} " + show.show_time_start.strftime("%H:%M:%S")
		time_diff = (show_time.to_time - Time.current)
	  unless time_diff.negative?
		  hours = time_diff.round.abs / 3600

		  dt = DateTime.strptime(time_diff.to_s, '%s').utc
		  return "#{hours}:#{dt.strftime "%M:%S"}"
		else
			return "---"
		end
	end
end
