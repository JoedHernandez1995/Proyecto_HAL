class HomeController < ApplicationController
	def index
		
		query = "SELECT channel,count(*) FROM registros where media = 'Radio' GROUP BY channel ORDER BY count(*) DESC LIMIT 5"
		@results = ActiveRecord::Base.connection.execute(query)
	end

	def about_us
		
	end
end