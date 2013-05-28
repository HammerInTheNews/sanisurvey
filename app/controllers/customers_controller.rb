class CustomersController < ApplicationController
	def index
		@customers = Customer.order(:customer_number)
    respond_to do |format|
    format.html
    format.csv { send_data @customers.to_csv }
    #format.xls #{ send_data @customers.to_csv(col_sep: "\t") }
    end  
	end

	def new
      @customer = customer.new
    end

    def import
      Customer.import(params[:file])
      redirect_to root_url, notice: "Customers"
    end
end
