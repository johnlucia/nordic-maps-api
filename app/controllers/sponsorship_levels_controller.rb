class SponsorshipLevelsController < ApplicationController
  before_action :set_sponsorship_level, only: [:show, :edit, :update, :destroy]

  # GET /sponsorship_levels
  # GET /sponsorship_levels.json
  def index
    @sponsorship_levels = SponsorshipLevel.all
  end

  # GET /sponsorship_levels/1
  # GET /sponsorship_levels/1.json
  def show
  end

  # GET /sponsorship_levels/new
  def new
    @sponsorship_level = SponsorshipLevel.new
  end

  # GET /sponsorship_levels/1/edit
  def edit
  end

  # POST /sponsorship_levels
  # POST /sponsorship_levels.json
  def create
    @sponsorship_level = SponsorshipLevel.new(sponsorship_level_params)

    respond_to do |format|
      if @sponsorship_level.save
        format.html { redirect_to @sponsorship_level, notice: 'Sponsorship level was successfully created.' }
        format.json { render :show, status: :created, location: @sponsorship_level }
      else
        format.html { render :new }
        format.json { render json: @sponsorship_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsorship_levels/1
  # PATCH/PUT /sponsorship_levels/1.json
  def update
    respond_to do |format|
      if @sponsorship_level.update(sponsorship_level_params)
        format.html { redirect_to @sponsorship_level, notice: 'Sponsorship level was successfully updated.' }
        format.json { render :show, status: :ok, location: @sponsorship_level }
      else
        format.html { render :edit }
        format.json { render json: @sponsorship_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsorship_levels/1
  # DELETE /sponsorship_levels/1.json
  def destroy
    @sponsorship_level.destroy
    respond_to do |format|
      format.html { redirect_to sponsorship_levels_url, notice: 'Sponsorship level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsorship_level
      @sponsorship_level = SponsorshipLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sponsorship_level_params
      params.require(:sponsorship_level).permit(:name)
    end
end
