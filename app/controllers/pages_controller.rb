class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @users = User.all
    @mopeds = Moped.all
  end
end
