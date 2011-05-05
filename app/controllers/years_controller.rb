class YearsController < ApplicationController
  def index
    @year = Year.find_by_year(2010)

    # now next and previous year for switching between them
	# does it have a following year?
	if Year.find_by_year(@year.year.to_i + 1) != nil
		@next_year = Year.find_by_year(@year.year.to_i + 1)
	else
		@next_year = @year
	end

	# does it have a previous year?
	if Year.find_by_year(@year.year.to_i - 1 ) != nil
		@last_year = Year.find_by_year(@year.year.to_i - 1)
	else
		@last_year = @year
	end
	
	
    respond_to do |format|
      format.html # index.html.erb
	  format.xml { render :xml => @year }
    end
  end

  def show
    @year = Year.find(params[:id])

    # now next and previous year for switching between them
	# does it have a following year?
	if Year.find_by_year(@year.year.to_i + 1) != nil
		@next_year = Year.find_by_year(@year.year.to_i + 1)
	else
		@next_year = @year
	end

	# does it have a previous year?
	if Year.find_by_year(@year.year.to_i - 1 ) != nil
		@last_year = Year.find_by_year(@year.year.to_i - 1)
	else
		@last_year = @year
	end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @year }
    end
  end
end
