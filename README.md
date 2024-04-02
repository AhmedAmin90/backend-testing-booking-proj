# README

This is for Ruby on Rails backend testing. It's a simple app for room booking.

### Business scenario:

We are an event management system, in our events we need to book reservations for our attendees. We agreed with a hotel to reserve number of rooms at selected dates for our events.
We will manage these rooms from our platform, where the attendees of our events will have accounts and select the dates they want to come to our event and book a room. Some of the attendees may cancel their booking so we need to make these days available again for other attendees.

### Technical:

- The application has three models, `User`, `Room` and `Booking`
- Booking belongs to user and room.
- Room has available_dates attribute which stores an array of dates when the room is free to be booked in. for example: ["2024-10-10", "2024-10-11"] that means the room is available at these two days.
- Booking has booking_dates attribute which stores an array of dates that the customer booked. or example: ["2024-10-10", "2024-10-11"] that means the booking dates start from "2024-10-10" and end at "2024-10-11" and this is one night only.

### Tasks:

These are the tasks that you need to do:

(M) => Mandatory
(O) => Optional

1. (O) Logic of strong password for a user.
2. (O) Check the security issue in the login endpoint.
3. (M) Logic of current user in the application controller.
4. (M) Controller for Bookings with three end points:
   - Create new booking
   - Cancel booking
   - Get user's booking formatted as reservations_data method in user model.
