class TransactionApprovedMailer < ApplicationMailer
  def transaction_approved_email(numero)
    @buyer = User.find(numero.user_id)
    @rifa = Rifa.find(numero.rifa_id)
    mail subject: 'Compra aprobada', to: @buyer.mail
  end
end
