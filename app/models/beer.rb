class Beer < ActiveRecord::Base
    has_many :reviews, dependent: :destroy
    validates :title, :description, :picture, presence: true
    validates :title, uniqueness: true
end
