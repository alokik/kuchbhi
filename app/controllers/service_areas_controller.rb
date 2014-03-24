class ServiceAreasController < ApplicationController
    
	def index
	end
	
	def show
	@service_area = ServiceArea.find(params[:id])
	end
end
