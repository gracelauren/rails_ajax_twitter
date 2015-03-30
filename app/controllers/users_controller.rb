class UsersController < ApplicationController

  def index
    @blubs = Blub.all
  end

  def show
    @blubs = current_user.blubs
  end

end
