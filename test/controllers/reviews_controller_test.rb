require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  setup do
    @review = reviews(:one)
    @beer = beers(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get new" do
    get :new, beer_id: @beer
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, review: { beer_id: @beer, comment: @review.comment, rating: @review.rating }
    end

    assert_redirected_to review_path(assigns(:review))
  end

  test "should get edit" do
    get :edit, id: @review
    assert_response :success
  end

  test "should update review" do
    patch :update, id: @review, review: { beer_id: @beer, comment: @review.comment, rating: @review.rating }
    assert_redirected_to review_path(assigns(:review))
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, id: @review
    end

    assert_redirected_to root_path
  end
end
