class LikesController < ApplicationController

    before_action :authenticate_user!
    
    def create
        product = Product.find params[:product_id]
        like = Like.new(product: product, user: current_user)
        if can?(:like, product)
            like.save
        end
        redirect_to product_path(product)
    end
    
    def destroy
        like = Like.find params[:id]
        if can?(:destroy, like)
            like.destroy
        end
        redirect_to product_path(like.product)
    end  
end


