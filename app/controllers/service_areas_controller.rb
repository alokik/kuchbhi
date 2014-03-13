class ServiceAreasController < ApplicationController
    links_per_page = 2
	def index
	@service_areas = Kaminari.paginate_array(ServiceArea.search(params[:searchcity], params[:searchloc], params[:searchpincode])).page(params[:page]).per(links_per_page)
	end
	def show
	@service_area = ServiceArea.find(params[:id])
	end
end
