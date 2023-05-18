class MopedsController < ApplicationController

  def show
    
  end

  def new
    @moped = Moped.new
  end

  def create
    @moped = Moped.new(moped_params)
    if @moped.save
      redirect_to moped_path(@moped)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def moped_params
    params.require(:moped).permit(:name, :color, :description, :price, :n_of_passengers, :user_id)
  end
end
