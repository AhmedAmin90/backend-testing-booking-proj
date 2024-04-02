class Room < ApplicationRecord

  # Check if the room is available on a specific date range
  def available_on?(start_date, end_date)
    # Logic here
  end


  # Spread the dates between the start_date and end_date to get an array of dates
  def self.spread_dates(start_date, end_date)
    first_date = DateTime.parse(start_date)
    last_date = DateTime.parse(end_date)
    (first_date..last_date).map { |date| date.strftime("%Y-%m-%d") }
  end
end
