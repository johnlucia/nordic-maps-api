class JunctionsController < ApplicationController
  before_action :set_junction, only: [:show, :edit, :update, :destroy]

  # GET /junctions
  # GET /junctions.json
  def index
    @junctions = Junction.all
  end

  # GET /junctions/1
  # GET /junctions/1.json
  def show
  end

  # GET /junctions/new
  def new
    @junction = Junction.new
  end

  # GET /junctions/1/edit
  def edit
  end

  # POST /junctions
  # POST /junctions.json
  def create
    @junction = Junction.new(junction_params)

    respond_to do |format|
      if @junction.save
        format.html { redirect_to @junction, notice: 'Junction was successfully created.' }
        format.json { render :show, status: :created, location: @junction }
      else
        format.html { render :new }
        format.json { render json: @junction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /junctions/1
  # PATCH/PUT /junctions/1.json
  def update
    respond_to do |format|
      if @junction.update(junction_params)
        format.html { redirect_to @junction, notice: 'Junction was successfully updated.' }
        format.json { render :show, status: :ok, location: @junction }
      else
        format.html { render :edit }
        format.json { render json: @junction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /junctions/1
  # DELETE /junctions/1.json
  def destroy
    @junction.destroy
    respond_to do |format|
      format.html { redirect_to junctions_url, notice: 'Junction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_junction
      @junction = Junction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def junction_params
      params.require(:junction).permit(:name, :latitude, :longitude, :active)
    end
end
