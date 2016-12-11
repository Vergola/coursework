class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :title
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
