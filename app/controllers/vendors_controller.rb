class VendorsController < ApplicationController
	
	def show
		@vendor = Vendor.find(params[:id])
		@address = @vendor.vaddress

		@categories = @vendor.categories
		
	end

private
  def vendor_params
    params.require(:vendor).permit(:name, vendor_area:[:vendor_id, :service_area_id])
  end
end

