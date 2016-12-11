class AddUsersToReviews < ActiveRecord::Migration
  def up
    add_reference :reviews, :user, index: true
    Review.reset_column_information
    user = User.first
    
    Review.all.each do |review|
      review.user_id = user.id
      review.save!
    end
    
    change_column_null :reviews, :user_id, false
    add_foreign_key :reviews, :users
  end
  
  def down
    remove_foreign_key :reviews, :users
    remove_reference :reviews, :user, index: true
  end
end
