class Review < ActiveRecord::Base
  belongs_to :beer
  belongs_to :user
  validates :rating, :beer, presence: true
  validates :rating, :inclusion => {:in =>[1,2,3,4,5]}
end
