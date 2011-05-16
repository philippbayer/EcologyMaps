class HabiYearsController < ApplicationController
  def index
    @habi_year = HabiYear.find_by_year(2010)

    # now next and previous habi_year for switching between them
	# does it have a following habi_year?
	if HabiYear.find_by_year(@habi_year.year.to_i + 1) != nil
		@next_habi_year = HabiYear.find_by_year(@habi_year.year.to_i + 1)
	else
		@next_habi_year = @habi_year
	end

	# does it have a previous habi_year?
	if HabiYear.find_by_year(@habi_year.year.to_i - 1 ) != nil
		@last_habi_year = HabiYear.find_by_year(@habi_year.year.to_i - 1)
	else
		@last_habi_year = @habi_year
	end
	
	
    respond_to do |format|
      format.html # index.html.erb
	  format.xml { render :xml => @habi_year }
    end
  end

  def show
    @habi_year = HabiYear.find(params[:id])
	@type = "habi"

    # now next and previous habi_year for switching between them
	# does it have a following habi_year?
	if HabiYear.find_by_year(@habi_year.year.to_i + 1) != nil
		@next_habi_year = HabiYear.find_by_year(@habi_year.year.to_i + 1)
	else
		@next_habi_year = @habi_year
	end

	# does it have a previous habi_year?
	if HabiYear.find_by_year(@habi_year.year.to_i - 1 ) != nil
		@last_habi_year = HabiYear.find_by_year(@habi_year.year.to_i - 1)
	else
		@last_habi_year = @habi_year
	end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @habi_year }
    end
  end
end
