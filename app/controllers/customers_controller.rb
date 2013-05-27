class CustomersController < ApplicationController
	def index
		@customers = Customer.all
	end

	def new
      @customer = customer.new
    end

    def import
      Customer.import(params[:file])
      redirect_to root_url, notice: "Customers"
    end
end
