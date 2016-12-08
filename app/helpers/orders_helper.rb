module OrdersHelper
  def render_order_paid_state(order)
                             #外界往括号内的那东西传变量用的
    if order.is_paid?
      #这的 order 就是 上面（order）里的
      "已付款"
    else
      "未付款"
  end
 end
end
