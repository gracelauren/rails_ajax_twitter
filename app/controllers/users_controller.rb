class UsersController < ApplicationController

  def index
    @blubs = Blub.all.order("created_at DESC").page(params[:page]).per_page(15)
  end

  def show
    @blubs = current_user.blubs
  end

end
