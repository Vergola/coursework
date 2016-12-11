require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @beer = beers(:one)
  end
  
  test 'should not save empty review' do
    review = Review.new
    review.save
    refute review.valid?
  end
  
  test 'should save review' do
    review = Review.new
    review.rating = 5
    review.beer = @beer
    review.save
    assert review.valid?
  end
end
