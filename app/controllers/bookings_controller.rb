class BookingsController < ApplicationController
  def new
    @moped = Moped.find(params[:moped_id])
    @booking = Booking.new
  end

  def create
    @moped = Moped.find(params[:moped_id])
    @booking = Booking.new(booking_params)
    @booking.moped = @moped
    if @booking.save
      redirect_to my_bookings_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_bookings
    @my_bookings = Booking.where(user: current_user, confirmed: true).order(created_at: :desc)
    @my_booking_requests = Booking.where(user: current_user, confirmed: false).order(created_at: :desc)
    @my_mopeds = Moped.where(user: current_user)
  end

  def confirmed
    @moped = Moped.find(params[:moped_id])
    @booking = Booking.find(params[:booking_id])
    @booking.moped = @moped
    @booking.confirmed = true
    @booking.save
    redirect_to my_mopeds_path(current_user)
  end

  def declined
    @moped = Moped.find(params[:moped_id])
    @booking = Booking.find(params[:booking_id])
    @booking.moped = @moped
    @booking.declined = true
    @booking.save
    redirect_to my_mopeds_path(current_user)
  end
  
  private

  def booking_params
    params.require(:booking).permit(:user_id, :moped_id, :start_date, :end_date)
  end
end
