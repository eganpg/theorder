class CustomersController < ApplicationController
		
		def index
			@customer = Customer.all
		end

		def show
			@customer = Customer.find(params[:id])
		end

		def new
			@customer = Customer.new
		end

		def create
			@customer = Customer.new(params.require(:customer).permit(:name, :address, :email, :phone, :employee))
			if @customer.save
				redirect_to customers_path
			else
				render 'new'
			end
		end

end
