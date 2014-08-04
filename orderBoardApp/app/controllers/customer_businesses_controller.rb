class CustomerBusinessesController < ApplicationController
	def index
		@customerBusinesses = customerBusiness.all
	end
	
end
