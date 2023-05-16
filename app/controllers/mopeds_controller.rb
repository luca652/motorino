class MopedsController < ApplicationController
  def index
  end

  def show

    @moped = Moped.find(params[:id])
  end
end
