class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :description
      t.string :start_date
      t.string :end_date      
      t.string :category
      t.string :sub_category
      t.string :start_time
      t.string :end_time
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
