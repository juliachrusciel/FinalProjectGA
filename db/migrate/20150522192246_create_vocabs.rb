class CreateVocabs < ActiveRecord::Migration
  def change
    create_table :vocabs do |t|
      t.string :TurkishWP
      t.string :EnglishWP
      t.string :part_of_speech
      t.boolean :formal
      t.boolean :slang

      t.timestamps null: false
    end
  end
end
