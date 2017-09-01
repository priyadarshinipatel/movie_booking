class Show < ActiveRecord::Base
	has_many :bookings, dependent: :destroy
end
