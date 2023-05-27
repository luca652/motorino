class MopedsController < ApplicationController
  def index
    @users = User.all
    @mopeds = Moped.all
    @markers = @mopeds.geocoded.map do |moped|
      {
        lat: moped.latitude,
        lng: moped.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { moped: moped }),
        marker_html: render_to_string(partial: "marker", locals: {moped: moped})
      }
    end
  end

  def show
    @moped = Moped.find(params[:id])
    @previous_moped = Moped.where("id < ?", @moped.id).last
    @next_moped = Moped.where("id > ?", @moped.id).first

    @mopeds = Moped.all
    @booking = Booking.new
    # @moped.image.attach(io: URI.open(@moped.image_url), filename: 'image.jpg') if @moped.image_url.present?
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
    redirect_to my_mopeds_path, status: :see_other
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
    params.require(:moped).permit(:name, :color, :description, :price, :address, :user_id)
  end
end
