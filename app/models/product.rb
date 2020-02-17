class Product
	include HTTParty

	base_uri 'breakingbadapi.com/api'
	# default_params fields: 'name;occupation;birthday;status;img'

	def self.show
		get("/characters")
	end

	def self.search(name)
		get("/characters?name=#{name}")
	end

end
