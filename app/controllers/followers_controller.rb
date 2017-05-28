class FollowersController < ApplicationController
  def create
  user = User.find(params[:user_id])
  follower_relationship = user.follower_relationships.build(
    follower_id: current_user.id
  )
    if follower_relationship.save
      NewFollowerMailer.new_follower_email(user, current_user).deliver_later
      redirect_to user_path(user.id)
    else
      redirect_to user_path(user.id), alert: "Can't follow that user"
    end
  end

  def destroy
    follow = Follow.find(params[:id])
    follow.destroy
    redirect_to users_path, notice: "You are not following #{follow.following.email} anymore"
  end
end
