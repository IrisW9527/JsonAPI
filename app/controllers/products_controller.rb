class ProductsController < ApplicationController

	def index
		@list = Product.show
	end

	def details
		@search_term = params[:name] || 'Walter White'
		@results = Product.search(@search_term)
	end

end
