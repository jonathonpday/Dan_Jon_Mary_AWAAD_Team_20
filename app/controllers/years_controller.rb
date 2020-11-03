class YearsController < ApplicationController
  before_action :set_year, only: [:show, :edit, :update, :destroy]

  # GET /years
  # GET /years.json
  def index
    @years = Year.search(params[:term])
  end

  # GET /years/1
  # GET /years/1.json
  def show
    @years = Year.find(params[:id])
    @year_values = []
    @year_names = []
    @years.attributes.each do |attr_name, attr_value|
      if attr_name =~ /YR/
        @year_values << attr_value
      end 
    end

    respond_to do |format|
      format.html
      format.json {render json: @years.to_json}
    end
  end

  # GET /years/new
  def new
    @year = Year.new
  end

  # GET /years/1/edit
  def edit
  end

  # POST /years
  # POST /years.json
  def create
    @year = Year.new(year_params)

    respond_to do |format|
      if @year.save
        format.html { redirect_to @year, notice: 'Year was successfully created.' }
        format.json { render :show, status: :created, location: @year }
      else
        format.html { render :new }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /years/1
  # PATCH/PUT /years/1.json
  def update
    respond_to do |format|
      if @year.update(year_params)
        format.html { redirect_to @year, notice: 'Year was successfully updated.' }
        format.json { render :show, status: :ok, location: @year }
      else
        format.html { render :edit }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /years/1
  # DELETE /years/1.json
  def destroy
    @year.destroy
    respond_to do |format|
      format.html { redirect_to years_url, notice: 'Year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year
      @year = Year.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def year_params
      params.require(:year).permit(:country_id, :YR2000, :YR2001, :YR2002, :YR2003, :YR2004, :YR2005, :YR2006, :YR2007, :YR2008, :YR2009, :YR2010, :YR2011, :YR2012, :YR2013, :YR2014, :YR2015, :YR2016, :YR2017, :YR2018, :YR2019, :term)
    end
end
