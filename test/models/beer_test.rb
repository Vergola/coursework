require 'test_helper'

class BeerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "empty Beer cannot be saved" do
    beer = Beer.new
    beer.save
    refute beer.valid?
  end
  
  test "Beer without title cannot be saved" do
    beer = Beer.new
    beer.description = "Brown"
    beer.picture = "link"
    beer.save
    refute beer.valid?
  end
  
  test "Beer without description cannot be saved" do
    beer = Beer.new
    beer.title = "Bud"
    beer.picture = "link"
    beer.save
    refute beer.valid?
  end
  
  test "Beer without picture cannot be saved" do
    beer = Beer.new
    beer.title = "Bud"
    beer.description = "Brown"
    beer.save
    refute beer.valid?
  end
  
  test "nonempty Beer can be saved" do
    beer = Beer.new
    beer.title = "Bud"
    beer.description = "Brown"
    beer.picture = "link"
    beer.save
    assert beer.valid?
  end
  
  test "duplicate title Beer cannot be saved" do
    beer1 = Beer.new
    beer1.title = "Bud"
    beer1.description = "Brown"
    beer1.picture = "link"
    beer1.save
    assert beer1.valid?
    
    beer2 = Beer.new
    beer2.title = "Bud"
    beer2.description = "Brown"
    beer2.picture = "link"
    beer2.save
    refute beer2.valid?
  end
  
end
