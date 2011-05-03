class YearsController < ApplicationController
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  def show
    @year = Year.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @year }
    end
  end
end
