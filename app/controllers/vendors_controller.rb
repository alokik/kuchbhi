class VendorsController < ApplicationController
	
	def show
		@vendor = Vendor.find(params[:id])
		@address = @vendor.vaddress

		@categories = @vendor.categories
		
	end

end
