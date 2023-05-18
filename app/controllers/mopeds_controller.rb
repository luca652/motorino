class MopedsController < ApplicationController

  def show
  end

  def new
    @moped = Moped.new
  end
end
