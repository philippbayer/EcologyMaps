class SuffYearsController < ApplicationController
  def index
    @suff_year = SuffYear.find_by_year(2010)

    # now next and previous suff_year for switching between them
	# does it have a following suff_year?
	if SuffYear.find_by_year(@suff_year.year.to_i + 1) != nil
		@next_suff_year = SuffYear.find_by_year(@suff_year.year.to_i + 1)
	else
		@next_suff_year = @suff_year
	end

	# does it have a previous suff_year?
	if SuffYear.find_by_year(@suff_year.year.to_i - 1 ) != nil
		@last_suff_year = SuffYear.find_by_year(@suff_year.year.to_i - 1)
	else
		@last_suff_year = @suff_year
	end
	
	
    respond_to do |format|
      format.html # index.html.erb
	  format.xml { render :xml => @suff_year }
    end
  end

  def show
    @suff_year = SuffYear.find(params[:id])
	@type = "suff"

    # now next and previous suff_year for switching between them
	# does it have a following suff_year?
	if SuffYear.find_by_year(@suff_year.year.to_i + 1) != nil
		@next_suff_year = SuffYear.find_by_year(@suff_year.year.to_i + 1)
	else
		@next_suff_year = @suff_year
	end

	# does it have a previous suff_year?
	if SuffYear.find_by_year(@suff_year.year.to_i - 1 ) != nil
		@last_suff_year = SuffYear.find_by_year(@suff_year.year.to_i - 1)
	else
		@last_suff_year = @suff_year
	end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @suff_year }
    end
  end
end
