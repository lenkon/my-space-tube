class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    if !@like.save
      flash[:alert] = "Yor already liked this"
    end
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
  end

  def like_params
    params.require(:like).permit(:post_id)
  end
end
