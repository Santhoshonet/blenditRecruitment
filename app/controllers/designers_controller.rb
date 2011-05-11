class DesignersController < ApplicationController
  # GET /designers
  # GET /designers.xml
  def index
    @designer = Designer.new
  end
  # POST /designers
  # POST /designers.xml
  def create
    @designer = Designer.new(params[:designer])
      if @designer.valid?
        flash[:notice] = 'Designer was successfully created.'
        # saving sample attachment here
        unless params[:attachment].nil?
          attachment = Attachment.new
          attachment.uploaded_file=params[:attachment]
          attachment.designer_id = @designer.id
          unless attachment.save
            flash[:notice] = ' but there was a problem with submitting your samples..'
          else
            @designer.attachment_id = attachment.id
          end
        end
        @designer.save
        render :success
      else
        render :index
      end
  end
  def success
    redirect_to :action => "index"
  end
  def show
    redirect_to :action => "index"
  end
end
