class ServiceAreasController < ApplicationController
	def index
	@service_areas = ServiceArea.search(params[:searchcity], params[:searchloc], params[:searchpincode])
	end

	def show
	@service_area = ServiceArea.find(params[:id])
	end
end
