class Passenger < ApplicationRecord
  belongs_to :booking, class_name: "Booking", optional: true
end
