class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_required
    if !current_user.admin?
      redirect_to "/"
    end
  end

   helper_method :current_cart

   def current_cart
     @current_cart ||= find_cart
   end



   private

   def find_cart
     cart = Cart.find_by(id: session[:cart_id])
     if cart.blank?
       cart = Cart.create
     end
     session[:cart_id] = cart.id
     return cart
   end

end


# 进来是先找这里的东西有什么要执行的 然后再去其他controller去找
