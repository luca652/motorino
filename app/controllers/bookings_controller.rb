class BookingsController < ApplicationController
  def my_bookings
    @my_bookings = Booking.where(user: current_user)
    @my_mopeds = Moped.where(user: current_user)
  end
end
