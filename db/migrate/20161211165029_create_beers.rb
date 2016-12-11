class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :picture, null: false

      t.timestamps null: false
    end
  end
end
