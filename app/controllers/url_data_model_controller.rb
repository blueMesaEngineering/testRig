class UrlDataModelController < ApplicationController

	def index
	    @url_data_model = UrlDataModel.all
	end
			
	def show
  		@url_data_model = UrlDataModel.find(params[:id])
	end

	def new
		@url_data_model = UrlDataModel.new
	end
end
