class CountryYearsController < ApplicationController
  # GET /country_years
  # GET /country_years.xml
  def index
    @country_years = CountryYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @country_years }
    end
  end

  # GET /country_years/1
  # GET /country_years/1.xml
  def show
    @country_year = CountryYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @country_year }
    end
  end

  # GET /country_years/new
  # GET /country_years/new.xml
  def new
    @country_year = CountryYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @country_year }
    end
  end

  # GET /country_years/1/edit
  def edit
    @country_year = CountryYear.find(params[:id])
  end

  # POST /country_years
  # POST /country_years.xml
  def create
    @country_year = CountryYear.new(params[:country_year])

    respond_to do |format|
      if @country_year.save
        format.html { redirect_to(@country_year, :notice => 'Country year was successfully created.') }
        format.xml  { render :xml => @country_year, :status => :created, :location => @country_year }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @country_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /country_years/1
  # PUT /country_years/1.xml
  def update
    @country_year = CountryYear.find(params[:id])

    respond_to do |format|
      if @country_year.update_attributes(params[:country_year])
        format.html { redirect_to(@country_year, :notice => 'Country year was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @country_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /country_years/1
  # DELETE /country_years/1.xml
  def destroy
    @country_year = CountryYear.find(params[:id])
    @country_year.destroy

    respond_to do |format|
      format.html { redirect_to(country_years_url) }
      format.xml  { head :ok }
    end
  end
end
