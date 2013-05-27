class CustomersController < ApplicationController
	def index
		@customers = Customer.all
	end

	def new
      @customer = customer.new
    end

    def import
    	#params[:file] is temp file storage
      Customer.import(params[:file])
      redirect_to root_url, notice: "Products"
    end
end
