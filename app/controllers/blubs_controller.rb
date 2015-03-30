class BlubsController < ApplicationController

  def new
    @blub = Blub.new
  end

  def create
    @blub = current_user.blubs.new(blub_params)
    if @blub.save
      flash[:notice] = "Your blub has floated the surface!"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Oh no! It's all gone wrong."
      redirect_to :new
    end
  end

  private
    def blub_params
      params.require(:blub).permit(:content)
    end


end
