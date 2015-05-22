class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :first_name
      t.string :surname
      t.string :nationality
      t.string :first_language
      t.string :second_language
      t.string :third_language
      t.string :fourth_language

      t.timestamps null: false
    end
  end
end
