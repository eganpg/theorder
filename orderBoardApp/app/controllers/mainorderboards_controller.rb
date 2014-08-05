class MainorderboardsController < ApplicationController
	def index
		@mainorderboard = Mainorderboard.where(:customer_id => @customer.id)
		
		
	end



	def new
		@customer = Customer.find(params[:customer_id])
		@mainorderboard = Mainorderboard.new
		puts 'test'
	end

	def create
		@customer = Customer.find(params[:customer_id])
		@mainorderboard = Mainorderboard.new(
			params.require(:mainorderboard).permit(:name, :salesman, :email, :phone)
			)
		# Mainorderboard.customer = @customer
		if @mainorderboard.save
			redirect_to customer_mainorderboards_path(@customer.id)

		else
			render 'new'
		end
	end
	def destroy
		@mainorderboard = Mainorderboard.find(params[:id])
		@mainorderboard.destroy
		redirect_to mainorderboards_path
	end
end

	# def edit 
	# 	@login = Login.find(params[:id])
	# end

	# def update
	# 	@login = Login.find(params[:id])
	# 	if @login.update_attributes(params.require(:login).permit(:firstName, :lastName, :email))
	# 		redirect_to logins_path
	# 	else
	# 		render 'edit'
	# 	end
	# end

	# def destroy
	# 	@login = Login.find(params[:id])
	# 	@logins.destroy
	# 	redirect_to logins_path
	# end

