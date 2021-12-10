class ItemsController < ApplicationController

    before_action :authenticate_user!
    
    def create
       
        cart = Cart.find params[:cart_id]
        product = Product.find params[:product_id]
        item = Item.new(product: product, cart: cart)
        if item.save
            flash[:notice] = "Item has been added to your cart" 
        else
            flash[:alert] = item.errors.full_messages.join(', ')
        end
        redirect_to product_path(product)
    end

    def destroy
        item = Item.find params[:id]
        if item.destroy
            flash[:alert] = "Item removed from cart" 
        else
            flash[:alert] = cart.errors.full_messages.join(', ')
        end
        redirect_to cart_path(item.cart)
    end

end
