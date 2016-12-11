class Beer < ActiveRecord::Base
    validates :title, :description, :picture, presence: true
    validates :title, uniqueness: true
end
