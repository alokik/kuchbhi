class VendorsController < ApplicationController
	
	def index
	    
	    @q = Vendor.search(params[:q])
		per_page = 2
	    
	    if params[:q]
			@vendors_arr = @q.result(distinct: true)    
	    else 
		    
			@ss = ServiceArea.search(params[:searchcity], params[:searchloc], params[:searchpincode])
			@vendors_arr = Array.new
			@ss.each do |s|
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

		@shopping_cart = get_current_cart

	end

private
  def vendor_params
    params.require(:vendor).permit(:name, vendor_area:[:vendor_id, :service_area_id])
  end

  def get_current_cart
  	if session[:shopping_cart_id]
  		shopping_cart_id = session[:shopping_cart_id]
  		ShoppingCart.find(shopping_cart_id)
  	end
  end

end

