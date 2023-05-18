class MopedsController < ApplicationController
  def show
    @moped = Moped.find(params[:id])
    @previous_moped = Moped.where("id < ?", @moped.id).last
    @next_moped = Moped.where("id > ?", @moped.id).first
  end
end
