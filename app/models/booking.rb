class Booking < ApplicationRecord
  belongs_to :flight, class_name: "Flight"
  has_many :passengers, foreign_key: :booking_id, class_name: "Passenger", dependent: :destroy

  accepts_nested_attributes_for :passengers
end
