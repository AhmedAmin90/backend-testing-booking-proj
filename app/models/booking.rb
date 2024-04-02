class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room


  # Validate booking_dates not to be empty.
  # Validate booking_dates to be an array.
  # Validate the dates in booking_dates to be in a correct format. ("YYYY-MM-DD")
  # Validate the dates in booking_dates to be in the future and sorted in ascending order.
  def validate_booking_dates
    # Logic here
  end



  # Book a room for a specific date range
  def book(start_date, end_date)
    # Logic here
  end

  # Cancel a booking for a room:
  def cancel_booking
    # Logic here
  end


end
