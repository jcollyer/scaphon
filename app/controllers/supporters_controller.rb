class SupportersController < ApplicationController
  before_filter :authorize, except: [:index]
  before_action :set_supporter, only: [:show, :edit, :update, :destroy]

  # GET /supporters
  # GET /supporters.json
  def index
    @supporters = Supporter.all.order(updated_at: :desc)
    @thisModel = Supporter.all
  end

  # GET /supporters/1
  # GET /supporters/1.json
  def show
    @supporter  = Supporter.find(params[:id])

    @imageable     = @supporter
    @pictures      = @imageable.pictures
    @picture       = Picture.new

    @fileable    = @supporter
    @attachments = @fileable.attachments
    @attachment  = Attachment.new


    @thisModel     =  Supporter.find(params[:id])
  end

  # GET /supporters/new
  def new
    @supporter = Supporter.new
  end

  # GET /supporters/1/edit
  def edit
  end

  # POST /supporters
  # POST /supporters.json
  def create
    @supporter = Supporter.new(supporter_params)

    respond_to do |format|
      if @supporter.save
        format.html { redirect_to @supporter, notice: 'Supporter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @supporter }
      else
        format.html { render action: 'new' }
        format.json { render json: @supporter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supporters/1
  # PATCH/PUT /supporters/1.json
  def update
    respond_to do |format|
      if @supporter.update(supporter_params)
        format.html { redirect_to @supporter, notice: 'Supporter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @supporter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supporters/1
  # DELETE /supporters/1.json
  def destroy
    @supporter.destroy
    respond_to do |format|
      format.html { redirect_to supporters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supporter
      @supporter = Supporter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supporter_params
      params.require(:supporter).permit(:name, :status, :active)
    end
end
