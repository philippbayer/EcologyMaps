class YearsController < ApplicationController
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def Two004
	respond_to do |format|
	  format.html
	end
  end

  def main
	respond_to do |format|
	  format.html
	end
  end

end
