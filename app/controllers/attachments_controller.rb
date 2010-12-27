AttachmentsController = Class.new(TinyMceUploads.attachments_controller_superclass_name.constantize) do
  layout 'tiny_mce_uploads'

  def new
    @attachment = Attachment.new
  end

  def create
    @attachment = Attachment.new(params[:attachment])
    @attachment.save!

    @insertion_string = if @attachment.image?
      %Q[<img src="#{@attachment.upload.url(:original)}">]
    else
      %Q[<a href="#{@attachment.upload.url}">Download #{@attachment.upload_file_name}</a>]
    end

    render :layout => false
  rescue ActiveRecord::RecordInvalid => e
    render :action => 'new'
  end
end
