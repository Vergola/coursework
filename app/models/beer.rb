class Beer < ActiveRecord::Base
    #a beer has many reviews which depend on it
    has_many :reviews, dependent: :destroy
    #validates if title, description and picture are not null
    validates :title, :description, :picture, presence: true
    #validates that the title is unique
    validates :title, uniqueness: true
end
