class WeatherforecastsController < ApplicationController
  before_action :set_weatherforecast, only: [:show, :edit, :update, :destroy]

  # GET /weatherforecasts
  # GET /weatherforecasts.json
  def index
    @weatherforecasts = Weatherforecast.all
  end

  # GET /weatherforecasts/1
  # GET /weatherforecasts/1.json
  def show
  end

  # GET /weatherforecasts/new
  def new
    @weatherforecast = Weatherforecast.new
  end

  # GET /weatherforecasts/1/edit
  def edit
  end

  # POST /weatherforecasts
  # POST /weatherforecasts.json
  def create
    @weatherforecast = Weatherforecast.new(weatherforecast_params)

    respond_to do |format|
      if @weatherforecast.save
        format.html { redirect_to @weatherforecast, notice: 'Weatherforecast was successfully created.' }
        format.json { render :show, status: :created, location: @weatherforecast }
      else
        format.html { render :new }
        format.json { render json: @weatherforecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weatherforecasts/1
  # PATCH/PUT /weatherforecasts/1.json
  def update
    respond_to do |format|
      if @weatherforecast.update(weatherforecast_params)
        format.html { redirect_to @weatherforecast, notice: 'Weatherforecast was successfully updated.' }
        format.json { render :show, status: :ok, location: @weatherforecast }
      else
        format.html { render :edit }
        format.json { render json: @weatherforecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weatherforecasts/1
  # DELETE /weatherforecasts/1.json
  def destroy
    @weatherforecast.destroy
    respond_to do |format|
      format.html { redirect_to weatherforecasts_url, notice: 'Weatherforecast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weatherforecast
      @weatherforecast = Weatherforecast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weatherforecast_params
      params.require(:weatherforecast).permit(:office_id, :temperature, :humidity_level, :sunlight, :date)
    end
end
