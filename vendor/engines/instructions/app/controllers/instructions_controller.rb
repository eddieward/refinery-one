class InstructionsController < ApplicationController

  before_filter :find_all_instructions
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @instruction in the line below:
    present(@page)
  end

  def show
    @instruction = Instruction.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @instruction in the line below:
    present(@page)
  end

protected

  def find_all_instructions
    @instructions = Instruction.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/instructions")
  end

end
