class PaymentsController < ApplicationController
    before_action :set_payment, only: [:show, :edit, :update]
    before_action :set_order, only: [:edit, :new, :create]
    before_action :set_names, only: [:edit, :new, :create]
    
    def new
        @payment = Payment.new
    end

    def show
    end
    
    def edit
    end
    
    def create
        
        p_type = params["payment"][:paymentable_type]
        if (p_type == "stripe")
            method = Stripe.create
        elsif (p_type == "paypal")
            method = Paypal.create
        else
            TransbankMethod.create
            method = Transbank.create
        end
        puts "*****#{params["payment"][:paymentable_type].inspect}"
        @payment = Payment.new(payment_params)
        method.payments << @payment

        
        respond_to do |format|
            if @payment.save
            format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
            format.json { render :show, status: :created, location: @payment }
            else
            format.html { render :new }
            format.json { render json: @payment.errors, status: :unprocessable_entity }
            end
        end
    end
    
        # PATCH/PUT /orders/1
        # PATCH/PUT /orders/1.json
    def update
        respond_to do |format|
            if @payment.update(payment_params)
            format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
            format.json { render :show, status: :ok, location: @payment }
            else
            format.html { render :edit }
            format.json { render json: @payment.errors, status: :unprocessable_entity }
            end
        end
    end
    
    
        private
        # Use callbacks to share common setup or constraints between actions.

        def set_names
            @names = TransbankMethod.names.keys
        end

        def set_payment
            @payment = Payment.find(params[:id])
        end

        def set_order
            @orders = Order.pluck :number, :id
        end
    
        # Never trust parameters from the scary internet, only allow the white list through.
        def payment_params
            params.require(:payment).permit(:token, :total, :state, :order_id, transbank_methods_attributes: [:name])
        end
    end
  