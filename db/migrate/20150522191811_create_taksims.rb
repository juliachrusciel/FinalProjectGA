class CreateTaksims < ActiveRecord::Migration
  def change
    create_table :taksims do |t|
      t.float :latitude
      t.float :longitude
      t.string :place_name
      t.string :address
      t.float :phone_number
      t.string :email
      t.string :place_type
      t.text :description
      t.string :keyword
      t.text :question
      t.text :review
      t.integer :origin_date

      t.timestamps null: false
    end
  end
end
