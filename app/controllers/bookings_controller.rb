class BookingsController < ApplicationController
  def my_bookings
    @my_bookings = Booking.where(user: current_user)
  end

  def my_requests
    @my_requests = Booking.joins(:moped).where(user: current_user)
  end
end
