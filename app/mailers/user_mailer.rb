class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_email(order)
    @order = order
    mail(to: order.email, subject: "This is your Order from JUNGLE, your Order# is #{ @order.id }")
  end
end