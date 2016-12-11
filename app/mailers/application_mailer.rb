class ApplicationMailer < ActionMailer::Base
  default to: "contact@beerreview.com", from: "contact@beerreview.com"
  layout 'mailer'
end
