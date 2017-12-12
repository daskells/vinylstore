class CartController < ApplicationController
  
  def add
    id = params[:id]
    
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
    
    if cart[id] then
      cart[id] = cart[id] + 1
    else 
      cart[id] = 1
    end
    
    redirect_to :action => :index
    
  end
  
  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end
  
  def index
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
  
  def remove
    id = params[:id]
    cart = session[:cart]
    cart.delete id
    
    redirect_to :action => :index
  
  end
  
  def createOrder
    
    @user = User.find(current_user.id)
    
    @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')
    
    @order.save
    
    @cart = session[:cart] || {} 
    
    @cart.each do | id, quantity |
      
      item = Item.find_by_id(id)
      
      @orderitem = @order.orderitems.build(:item_id => item.id, :title => item.title, :quantity => quantity, :price => item.price)
      
      @orderitem.save
      
    end
    
    @orders = Order.all
    
    @orderitems = Orderitem.where(order_id:Order.last)
    
    session[:cart] = nil
    
  end
    
end
 