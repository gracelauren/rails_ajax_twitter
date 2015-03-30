class BlubsController < ApplicationController

  def new
    @blub = Blub.new
  end

  def create
    @blub = current_user.blubs.new(blub_params)
    if @blub.save
      flash[:notice] = "Your blub has floated the surface!"
      respond_to do |format|
        format.html { redirect_to users_path }
        format.js
      end
    else
      flash[:alert] = "Oh no! It's all gone wrong."
      render :new
    end
  end

  private
    def blub_params
      params.require(:blub).permit(:content)
    end


end
