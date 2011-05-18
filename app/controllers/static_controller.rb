class StaticController < ApplicationController
	def faq
		respond_to do |format|
			format.html
			format.xml
			session[:map_type] = "faq"
		end
	end
end
