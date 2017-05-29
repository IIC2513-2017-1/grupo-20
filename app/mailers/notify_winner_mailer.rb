class NotifyWinnerMailer < ApplicationMailer
  def notify_winner_email(winner, rifa, number)
    @winner = winner
    @rifa = rifa
    @number = number
    mail to: winner.mail, subject: 'Has salido ganador de un sorteo!'
  end
end
