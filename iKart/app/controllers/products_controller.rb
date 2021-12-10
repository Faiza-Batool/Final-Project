class ProductsController < ApplicationController
    
    before_action :authenticate_user!, only: [:liked]
  
    def index
       
        if params[:search]
            
            @products = Product.where("name ILIKE '%#{params[:search]}%'")
        else
            @products = Product.all  
        end
    end

    def show
        @products = Product.all 
        @product = Product.find params[:id]
        @reviews = @product.reviews.order(created_at: :desc) #showing reviews 
        @review = Review.new 

        @like = @product.likes.find_by(user: current_user)
        @cart = @current_user && @current_user.carts[0]
     
    end

    def liked
        @products = current_user.liked_products 
    end

 
end
