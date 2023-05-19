class MopedsController < ApplicationController
  def show
    @moped = Moped.find(params[:id])
    @previous_moped = Moped.where("id < ?", @moped.id).last
    @next_moped = Moped.where("id > ?", @moped.id).first
    @total_mopeds = Moped.count
    @booking = Booking.new
  end

  def new
    @moped = Moped.new
  end

  def create
    @moped = Moped.new(moped_params)
    if @moped.save
      redirect_to my_mopeds_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @moped = Moped.find(params[:id])
    @moped.bookings.destroy_all
    @moped.destroy
    redirect_to root_path, status: :see_other
  end

  def edit
    @moped = Moped.find(params[:id])
  end

  def update
    @moped = Moped.find(params[:id])
    if @moped.update(moped_params)
      redirect_to moped_path(@moped)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def my_mopeds
    @my_mopeds = Moped.where(user: current_user).order(created_at: :desc)
  end

  private

  def moped_params
    params.require(:moped).permit(:name, :color, :description, :price, :n_of_passengers, :user_id)
  end
end
