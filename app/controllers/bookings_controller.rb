class BookingsController < ApplicationController
  def my_bookings
    @my_bookings = Booking.where(user: current_user)
    # @my_requests = Booking.joins(:moped).where(mopeds: { user: current_user })
  end
end
