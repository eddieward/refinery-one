class QuotesController < ApplicationController

 before_filter :require_user, :except => [:new, :thank_you, :create]

  # GET /quotes
  # GET /quotes.xml
  def index
    @quotes = Quote.paginate :page => params[:page], :order => 'created_at DESC'

    respond_to do |format|
      format.html # video.html.erb
      format.xml  { render :xml => @quotes }
    end
  end

  # GET /quotes/1
  # GET /quotes/1.xml
  def show
    @quote = Quote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quote }
    end
  end

  # GET /quotes/new
  # GET /quotes/new.xml
  def new
    @quote = Quote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quote }
    end
  end

  # GET /quotes/1/edit
  def edit
    @quote = Quote.find(params[:id])
  end

# POST /quotes
# POST /quotes.xml
  def create
    @quote = Quote.new(params[:quote])

    respond_to do |format|

      if verify_recaptcha
        if @quote.save
          Notifier.notify(@quote).deliver
          Notifier.confirmation(@quote).deliver
          format.html { redirect_to('/thank-you', :notice => "Quote was successfully sent.") }
          format.xml { render :xml => @quote, :status => :created, :location => @quote }
        else
          format.html { render :action => "new" }
          format.xml { render :xml => @quote.errors, :status => :unprocessable_entity }
        end
      else
        format.html { render :action => "new" }
      end
    end
  end

  def thank_you
    @quote = Quote.last
    @page = Page.find_by_link_url("/quotes/thank_you", :include => [:parts, :slugs])
  end

  # PUT /quotes/1
  # PUT /quotes/1.xml
  def update
    @quote = Quote.find(params[:id])

    respond_to do |format|
      if @quote.update_attributes(params[:quote])
        format.html { redirect_to(@quote, :notice => 'Quote was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.xml
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to(quotes_url) }
      format.xml  { head :ok }
    end
  end
end


