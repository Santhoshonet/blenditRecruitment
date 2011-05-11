class AttachmentController < ApplicationController
  def index
     if params[:id].nil?
      render :text => nil
    else
      file = Attachment.find(params[:id])
      unless file.nil?
        send_data file.data, :filename => file.name, :type => file.content_type
      else
        render :text => nil
      end
    end
  end
end
