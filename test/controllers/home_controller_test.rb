require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "should get home" do
    get :home
    assert_response :success
    assert_select 'title', 'BeerReview'
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_template layout: 'application'
    assert_select 'title', 'BeerReview'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Complete the form below to contact us'
  end
  
  test "should post request contact but no email" do
    post :request_contact
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end
  
  test "should post request contact" do
    post :request_contact,
    name: "John", email: "john@smith.com",
    message: "Good site"
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
