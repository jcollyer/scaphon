class AffairsController < ApplicationController
  before_filter :authorize, except: [:index]
  before_action :set_affair, only: [:show, :edit, :update, :destroy]

  # GET /affairs
  # GET /affairs.json
  def index
    @affairs = Affair.all
    @thisModel = Affair.all
  end

  # GET /affairs/1
  # GET /affairs/1.json
  def show
    @affair  = Affair.find(params[:id])

    @imageable   = @affair
    @pictures    = @imageable.pictures
    @picture     = Picture.new

    @fileable    = @affair
    @attachments = @fileable.attachments
    @attachment  = Attachment.new

    @thisModel =  Affair.find(params[:id])
  end

  # GET /affairs/new
  def new
    @affair = Affair.new
  end

  # GET /affairs/1/edit
  def edit
  end

  # POST /affairs
  # POST /affairs.json
  def create
    @affair = Affair.new(affair_params)

    respond_to do |format|
      if @affair.save
        format.html { redirect_to @affair, notice: 'Affair was successfully created.' }
        format.json { render action: 'show', status: :created, location: @affair }
      else
        format.html { render action: 'new' }
        format.json { render json: @affair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affairs/1
  # PATCH/PUT /affairs/1.json
  def update
    respond_to do |format|
      if @affair.update(affair_params)
        format.html { redirect_to @affair, notice: 'Affair was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @affair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affairs/1
  # DELETE /affairs/1.json
  def destroy
    @affair.destroy
    respond_to do |format|
      format.html { redirect_to affairs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affair
      @affair = Affair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affair_params
      params.require(:affair).permit(:kind, :name, :date, :location, :cost, :paypal, :description)
    end
end
