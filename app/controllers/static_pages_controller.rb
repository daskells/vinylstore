class StaticPagesController < ApplicationController
  def home
  end

  def register
  end

  def login
  end

  def profile
  end

  def catalog
  end

  def search
  end

  def cart
  end

  def checkout
  end

  def confirmation
  end
  
  def paid
    
    flash[:notice] = 'Transaction complete'
    @order = Order.last
    @order.update_attribute(:status , "Paid by user: #{current_user.email}")
  end
  
end
