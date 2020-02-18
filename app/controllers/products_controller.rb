class ProductsController < ApplicationController

	def index
		@list = Product.show
	end

	def details
		@search_term = params[:name]
		@results = Product.search(@search_term)
	end

end
