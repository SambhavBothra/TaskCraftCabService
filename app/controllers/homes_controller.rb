class HomesController < ApplicationController
	def index
		# @customer = Customers.all
		@cabs=Cab.all
	end
end	