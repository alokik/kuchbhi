class VendorsController < ApplicationController
	
	def index
	    
	    @q = Vendor.search(params[:q])

	    if params[:q]
			@vendors = @q.result(distinct: true)    
	    else 
		    per_page = 2
			@service_areas = Kaminari.paginate_array(ServiceArea.search(params[:searchcity], params[:searchloc], params[:searchpincode])).page(params[:page]).per(per_page)
			@vendors = Array.new
			@service_areas.each do |s|
				@vendors<<s.vendor
			end
	    end
	end

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

