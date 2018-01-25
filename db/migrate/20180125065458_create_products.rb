class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.datetime :date
      t.string :category
      t.string :sub_category
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
