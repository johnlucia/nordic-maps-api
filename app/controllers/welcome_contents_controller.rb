class WelcomeContentsController < ApplicationController
  before_action :set_welcome_content, only: [:show, :edit, :update, :destroy]

  # GET /welcome_contents
  # GET /welcome_contents.json
  def index
    @welcome_contents = WelcomeContent.all.order({active: :desc}, :position)
  end

  # GET /welcome_contents/1
  # GET /welcome_contents/1.json
  def show
  end

  # GET /welcome_contents/new
  def new
    @welcome_content = WelcomeContent.new
  end

  # GET /welcome_contents/1/edit
  def edit
  end

  # POST /welcome_contents
  # POST /welcome_contents.json
  def create
    @welcome_content = WelcomeContent.new(welcome_content_params)

    respond_to do |format|
      if @welcome_content.save
        format.html { redirect_to @welcome_content, notice: 'Welcome content was successfully created.' }
        format.json { render :show, status: :created, location: @welcome_content }
      else
        format.html { render :new }
        format.json { render json: @welcome_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /welcome_contents/1
  # PATCH/PUT /welcome_contents/1.json
  def update
    respond_to do |format|
      if @welcome_content.update(welcome_content_params)
        format.html { redirect_to @welcome_content, notice: 'Welcome content was successfully updated.' }
        format.json { render :show, status: :ok, location: @welcome_content }
      else
        format.html { render :edit }
        format.json { render json: @welcome_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcome_contents/1
  # DELETE /welcome_contents/1.json
  def destroy
    @welcome_content.destroy
    respond_to do |format|
      format.html { redirect_to welcome_contents_url, notice: 'Welcome content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcome_content
      @welcome_content = WelcomeContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def welcome_content_params
      params.require(:welcome_content).permit(:heading, :body, :link_text, :link_url, :position, :active)
    end
end
