class ApplicationController < ActionController::Base
  protect_from_forgery
  def faq
	  render 'public/faq.html'
  end
end
