class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to rifa_path(params[:id])
    else
      redirect_to rifa_path(params[:id])
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content).merge({rifa_id: params[:id], user_id: current_user.id, user_name: current_user.name})
    end
end
