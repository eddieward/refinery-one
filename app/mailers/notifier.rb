class Notifier < ActionMailer::Base

  def notify(quote)
    @quote = quote
    mail(:to => "eddie@orakatsystems.com", :subject => "Free Quote for " + quote.name, :from => "Engel Tax and Accounting")
  end

  def confirmation(quote)
    @quote = quote
    mail(:to => quote.email, :subject => "Free Quote Request", :from => "Engel Tax and Accounting")
  end

end
