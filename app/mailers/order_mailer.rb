class OrderMailer < ApplicationMailer

  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email , subject: "[tmstore] 感谢下单，这是明细 #{order.token}")
  end
end
