class AboutsController < ApplicationController
  before_filter :authorize, except: [:index]
  before_action :set_about, only: [:show, :edit, :update, :destroy]

  # GET /abouts
  # GET /abouts.json
  def index
    @abouts = About.all
    @thisModel = About.all
  end

  # GET /abouts/1
  # GET /abouts/1.json
  def show
    @about        = About.find(params[:id])
    @imageable    = @about
    @pictures     = @imageable.pictures
    @picture      = Picture.new
    @thisModel    =  About.find(params[:id])
  end

  # GET /abouts/new
  def new
    @about = About.new
  end

  # GET /abouts/1/edit
  def edit
  end

  # POST /abouts
  # POST /abouts.json
  def create
    @about = About.new(about_params)

    respond_to do |format|
      if @about.save
        format.html { redirect_to @about, notice: 'About was successfully created.' }
        format.json { render action: 'show', status: :created, location: @about }
      else
        format.html { render action: 'new' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abouts/1
  # PATCH/PUT /abouts/1.json
  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to abouts_path, notice: 'About was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abouts/1
  # DELETE /abouts/1.json
  def destroy
    @about.destroy
    respond_to do |format|
      format.html { redirect_to abouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params.require(:about).permit(:about, :scaphon, :aphon, :csp, :more)
    end
end
