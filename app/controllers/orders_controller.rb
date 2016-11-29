class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:create]
                      # 1。用户需登录  2.登录用户只能创建

      def create
        @order = Order.new(order_params)
        @order.user = current_user
        @order.total = current_cart.total_price

        if @order.save
          redirect_to order_path(@order)
        else
          render 'cart/checkout'
        end
      end

      private

      def order_params
        parama.require(:order),permit(:billing_name, :billing_address, :shipping_name, :shipping_address)
      end
end
