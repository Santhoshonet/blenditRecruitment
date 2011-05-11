class TechnicalspecialistsController < ApplicationController

  def index
    @technicalspecialist = Technicalspecialist.new
    preparequestions
  end

  def preparequestions
    @questions = []
    indexes = []
    index = 1
    while index < 6
      randomnumber = rand(Techsuppquestions.count)+1
      if indexes.index(randomnumber) == nil
        begin
          ts = Techsuppquestions.find(randomnumber)
          @questions.push(ts)
          indexes.push(randomnumber)
          index+=1
        rescue
        end
      end
    end
  end

  def create
    @technicalspecialist = Technicalspecialist.new(params[:technicalspecialist])
    if @technicalspecialist.save
      1.upto(6).each do |index|
        questionid = params["questionid" + index.to_s]
        techsupanswer = Techsuppanswer.new
        techsupanswer.techsuppquestions_id = questionid
        techsupanswer.answer = params["answer_" + questionid.to_s]
        techsupanswer.technicalspecialist_id = @technicalspecialist.id
        techsupanswer.save
      end
      flash[:notice] = 'Record was successfully created.'
      # saving sample attachment here
      unless params[:attachment].blank?
        attachment = Attachment.new
        attachment.uploaded_file=params[:attachment]
        attachment.designer_id = @technicalspecialist.id
        unless attachment.save
          @technicalspecialist.attachment_id = attachment.id
          flash[:notice] = ' but there was a problem with submitting your samples..'
          end
      end
      @technicalspecialist.save
      render :success
    else
      begin
        @questions = []
        1.upto(6).each do |index|
          questionid = params["questionid" + index.to_s]
          @questions.push(Techsuppquestions.find(questionid))
        end
      rescue
      end
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
