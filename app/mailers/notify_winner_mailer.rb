class NotifyWinnerMailer < ApplicationMailer
  def notify_winner_email(winner, rifa, number)
    @winner = winner
    @rifa = rifa
    @number = number
    mail subject: 'Has salido ganador de un sorteo!', to: winner.mail
  end
end
