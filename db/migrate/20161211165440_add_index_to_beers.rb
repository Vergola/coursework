class AddIndexToBeers < ActiveRecord::Migration
  def change
    add_index :beers, :title, unique: true
  end
end
