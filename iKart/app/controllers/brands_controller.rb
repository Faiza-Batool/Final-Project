class BrandsController < ApplicationController
    
   def index
     
   end

   def show
      @brand = Brand.find params[:id]
      @types = @brand.types.order(created_at: :desc)
   end
   
end
