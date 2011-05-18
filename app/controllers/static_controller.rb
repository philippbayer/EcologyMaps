class StaticController < ApplicationController
	def faq
		respond_to do |format|
			format.html
			format.xml
		end
end
