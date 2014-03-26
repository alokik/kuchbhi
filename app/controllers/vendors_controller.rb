class VendorsController < ApplicationController
	
	def index
	    
	    @q = Vendor.search(params[:q])

	    if params[:q]
			@vendors = @q.result(distinct: true)    
	    else 
		    per_page = 2
			@service_areas = ServiceArea.search(params[:searchcity], params[:searchloc], params[:searchpincode])
			@vendors_arr = Array.new
			@service_areas.each do |s|
				s.vendors.each do |v|				
					@vendors_arr<<v
				end
			end
	    end
	    @vendors = Kaminari.paginate_array(@vendors_arr).page(params[:page]).per(per_page)
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

