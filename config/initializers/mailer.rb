ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
:enable_starttls_auto => true,
:address => 'smtp.gmail.com',
:port => 587,
:domain => "engeltaxandaccounting.com",
:user_name => 'admin@engeltaxandaccounting.com',
:password => 'engeltaxadmin',
:authentication => 'plain',
}
