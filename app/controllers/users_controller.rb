class UsersController < ApplicationController

  def index
  end

  def show
    @blubs = current_user.blubs
  end

end
