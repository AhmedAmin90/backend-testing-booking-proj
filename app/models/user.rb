class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }



  # Add validation here for strong password to contain at least one uppercase letter, one lowercase letter, one digit and one special character
  def validate_strong_password
    # Logic here
  end


  def reservations_data
    # Logic here to this format:
    {
      username: self.username,
      reservation_details: [{
        room_number: "Room 1",
        start_date: "2024-01-01",
        end_date:   "2024-01-02",
        nights_count: 1
      }]
    }
  end
end
