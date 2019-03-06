class UrlDataModelController < ApplicationController





	#------------------------------------------------------------------------------
	#Name:                          index
	#
	#Purpose:                       
	#
	#Precondition:                  url_data_models table exists.
	#
	#Postcondition:                 Models extant in url_data_models table are
	# 								displayed in the index.
	#
	#                                   -----
	#
	#Calls:                         
	#
	#Called By:                     printable_controller.rb
	#
	#                                   -----
	#Additional Comments: 			
	#
	#Programmer:                    ND Guthrie
	#Date:                          20190305
	#------------------------------------------------------------------------------

	def index

		@url_data_models = UrlDataModel.all

	end






	#------------------------------------------------------------------------------
	#Name:                          show
	#
	#Purpose:                       To display a model.
	#
	#Precondition:                  @model exists.
	#
	#Postcondition:                 Model with the ID :id is accessible to the 
	# 								view.
	#
	#                                   -----
	#
	#Calls:                         
	#
	#Called By:                     printable_controller.rb
	#
	#                                   -----
	#Additional Comments: 			
	#
	#Programmer:                    ND Guthrie
	#Date:                          20190305
	#------------------------------------------------------------------------------

	def show

		@url_data_model = UrlDataModel.find(params[:id])
		
	end







	#------------------------------------------------------------------------------
	#Name:                          create
	#
	#Purpose:                       To display at model.
	#
	#Precondition:                  @model exists.
	#
	#Postcondition:                 Model with the ID :id is accessible to the 
	# 								view.
	#
	#                                   -----
	#
	#Calls:                         
	#
	#Called By:                     printable_controller.rb
	#
	#                                   -----
	#Additional Comments: 			
	#
	#Programmer:                    ND Guthrie
	#Date:                          20190305
	#------------------------------------------------------------------------------

	def create

		modelParams = "http://docraptor.com/examples/invoice.htm"

		# modelParams = "http://www.sspro.com"

		@url_data_model = UrlDataModel.new(modelParams)

		render 'show'

	end




	private

		def modelParams
			params.require(:model).permit(:url)			
		end


end
