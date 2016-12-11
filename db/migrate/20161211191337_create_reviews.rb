class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :beer, index: true, foreign_key: true, null: false
      t.integer :rating, null: false
      t.text :comment

      t.timestamps null: false
    end
  end
end
