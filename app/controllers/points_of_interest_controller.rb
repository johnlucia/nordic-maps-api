class PointsOfInterestController < ApplicationController
  before_action :set_point_of_interest, only: [:show, :edit, :update, :destroy]

  def index
    @points_of_interest = PointOfInterest.all
  end

  def show
  end

  def new
    @point_of_interest = PointOfInterest.new
  end

  def edit
  end

  def create
    @point_of_interest = PointOfInterest.new(point_of_interest_params)

    respond_to do |format|
      if @point_of_interest.save
        format.html { redirect_to @point_of_interest, notice: 'POI was successfully created.' }
        format.json { render :show, status: :created, location: @point_of_interest }
      else
        format.html { render :new }
        format.json { render json: @point_of_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @point_of_interest.update(point_of_interest_params)
        format.html { redirect_to @point_of_interest, notice: 'POI was successfully updated.' }
        format.json { render :show, status: :ok, location: @point_of_interest }
      else
        format.html { render :edit }
        format.json { render json: @point_of_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @point_of_interest.destroy
    respond_to do |format|
      format.html { redirect_to points_of_interest_url, notice: 'POI was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_point_of_interest
    @point_of_interest = PointOfInterest.find(params[:id])
  end

  def point_of_interest_params
    params.require(:point_of_interest).permit(:name, :uid, :description, :active, :latitude, :longitude)
  end
end
