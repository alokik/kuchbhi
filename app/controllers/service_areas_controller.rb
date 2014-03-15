class ServiceAreasController < ApplicationController
    
	def index
	    per_page = 2
		@service_areas = Kaminari.paginate_array(ServiceArea.search(params[:searchcity], params[:searchloc], params[:searchpincode])).page(params[:page]).per(per_page)
	end
	
	def show
	@service_area = ServiceArea.find(params[:id])
	end
end
