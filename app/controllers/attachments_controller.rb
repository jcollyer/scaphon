class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy]
  before_filter :load_fileable
  # GET /attachments
  # GET /attachments.json
  def index
    @attachments = @fileable.attachments
  end

  # GET /attachments/1
  # GET /attachments/1.json
  def show
  end

  # GET /attachments/new
  def new
    @attachment = @fileable.attachments.new
  end

  # POST /attachments
  # POST /attachments.json
  def create
    @attachment = @fileable.attachments.new(attachment_params)
    if @attachment.save
      redirect_to @fileable, notice: "attachment created."
    else
      render :new
    end
  end

  # GET /attachments/1/edit
  def edit
  end

  # PATCH/PUT /attachments/1
  # PATCH/PUT /attachments/1.json
  def update
    respond_to do |format|
      if @attachment.update(attachment_params)
        format.html { redirect_to @attachment, notice: 'Attachment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attachments/1
  # DELETE /attachments/1.json
  def destroy
    @attachment.destroy
    redirect_to(:back)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attachment_params
      params.require(:attachment).permit(:name, :file)
    end

    def load_fileable
      resource, id = request.path.split('/')[1, 2]
      @fileable = resource.singularize.classify.constantize.find(id)

      # klass = [Newsletter, Conference].detect { |c| params["#{c.name.underscore}_id"] }
      # @fileable = klass.find(params["#{klass.name.underscore}_id"])
    end
end
