class ReviewsController < ApplicationController

     
    before_action :find_product
    before_action :find_review, only: [:update, :edit, :destroy]
    before_action :authenticate_user!
   
    def create
         
        @review = Review.new(params.require(:review).permit(:body,:rating))
        @review.product = @product
        @review.user = current_user

        if @review.save 
            flash[:notice] = 'Review created'    
        else
            flash[:warning] = @review.errors.full_messages.join(' , ')
        end
        @reviews = @product.reviews.order(created_at: :desc)
        redirect_to product_path(@product.id) 
    end
    
    def destroy
        
        if can?(:crud, @review)
             @review.destroy
            redirect_to product_path(@product), notice: 'Review Deleted'
        else
            redirect_to root_path, alert: 'Not Authorized'
        end
    end

    def edit 
        @reviews = @product.reviews
        redirect_to product_path(@product.id) 
    end

    def update
        
        if @review.update(params.require(:review).permit(:rating,:body))
            redirect_to product_path(@product.id)
        else
            @reviews = @product.reviews
            redirect_to product_path(@product.id) 
        end
    end

    def liked
        @reviews = current_user.liked_reviews
    end

    private 

    def find_product
        @product = Product.find params[:product_id]
    end

    def find_review
    @review = Review.find params[:id]
    end
end