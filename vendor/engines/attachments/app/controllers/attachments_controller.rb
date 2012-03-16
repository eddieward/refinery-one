class AttachmentsController < ApplicationController

  before_filter :find_all_attachments
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @attachment in the line below:
    present(@page)
  end

  def show
    @attachment = Attachment.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @attachment in the line below:
    present(@page)
  end

protected

  def find_all_attachments
    @attachments = Attachment.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/attachments")
  end

end
