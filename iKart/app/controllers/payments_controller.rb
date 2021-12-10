class PaymentsController < ApplicationController

    def new
        @payment = Payment.new
        @products = current_user.carts[0].products_in_cart
    end

    def create
        @products = current_user.carts[0].products_in_cart
        @payment = Payment.new({amount: @products.sum(&:price)})
        @payment.sender = current_user
        @payment.status = "pending"
        #SecureRandom.hex() is a ruby method which generates a random security key of characters given as arguments  
        @payment.security_key = SecureRandom.hex(20)
        @payment.receiver_id = 1

        if @payment.save
        
            shared_path = "http://127.0.0.1:3000/payments/complete?payment_id=#{@payment.id}&security_key=#{@payment.security_key}"
            session = Stripe::Checkout::Session.create({
                # success_url: shared_path + '/success',
                success_url: shared_path + '&status=completed',
                # cancel_url: shared_path + '/cancel',
                cancel_url: shared_path + '&status=canceled',
                payment_method_types: ['card'],
                line_items: [{
                    amount: @payment.amount.to_i * 100,
                    currency: 'cad',
                    name: 'Payment for product',
                    quantity: 1,
                    images: [
                        'https://clipart.world/wp-content/uploads/2021/01/Thank-You-clipart-16.png'
                    ]
                }],
                mode: 'payment'
            })
            redirect_to session.url
        else 
            render :new
        end
    end

    def complete 
        @payment = Payment.find params[:payment_id]
        @payment.status = params[:status]
        @payment.save
        if @payment.status == 'completed'
            flash[:notice]='Payment Successful!'
            current_user.carts[0].products_in_cart.destroy_all
        else
            flash[:alert]='Payment not completed'
        end
        redirect_to root_path
    end

    private

    # def payment_params
    #     params.require(:payment)
    # end
end

