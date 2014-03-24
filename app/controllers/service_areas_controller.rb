class ServiceAreasController < ApplicationController
    
	def index
	end
	
	def show
	@service_area = ServiceArea.find(params[:id])
	@vendor_area = service_area.vendor_areas
	end
end
