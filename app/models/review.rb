class Review < ActiveRecord::Base
  #user belongs to a beer and a user
  belongs_to :beer
  belongs_to :user
  #validates that rating and beer are not empty
  validates :rating, :beer, presence: true
  #validates that rating is only from 1 to 5
  validates :rating, :inclusion => {:in =>[1,2,3,4,5]}
end
