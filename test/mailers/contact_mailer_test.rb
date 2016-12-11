require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "return contact email" do
    mail = ContactMailer.contact_email("john@smith.com", "John Smith", @message = "Hi")
    assert_equal ['contact@beerreview.com'], mail.to
    assert_equal ['contact@beerreview.com'], mail.from
  end
end
