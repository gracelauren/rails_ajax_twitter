class BlubsController < ApplicationController

  def new
    @blub = Blub.new
  end

  def create
    @blub = current_user.blubs.new(blub_params)
    if @blub.save
      respond_to do |format|
        format.html { redirect_to users_path, :notice => 'Your blub has floated the surface!' }
        format.js
      end
    else
    render :new
    end
  end

  def destroy
    @blub = Blub.find(params[:id])
    if @blub.destroy
      flash[:alert] = "Blub has popped."
    end
    redirect_to users_path
  end

  private
    def blub_params
      params.require(:blub).permit(:content)
    end


end
