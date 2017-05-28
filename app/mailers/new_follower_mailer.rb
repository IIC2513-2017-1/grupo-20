class NewFollowerMailer < ApplicationMailer
  def new_follower_email(user, new_follower)
    @user = user
    @follower = new_follower
    mail subject: 'Tienes un nuevo seguidor!', to: user.email
  end
end
