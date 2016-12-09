class OrderMailer < ApplicationMailer

  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email , subject: "[tmstore] 感谢下单，这是明细 #{order.token}")
  end

  def apply_cancel(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: "1@1.com", subject: "[tmstore] 用户#{order.user.email}申请取消订单 #{order.token}" )
  end

  def notify_ship(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[tmstore] 您的订单 #{order.token}已发货")
  end

  def notify_cancel(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[tmstore] 您的订单 #{order.token}已取消")
  end
end
