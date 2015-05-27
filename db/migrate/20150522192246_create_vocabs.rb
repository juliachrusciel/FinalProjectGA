class CreateVocabs < ActiveRecord::Migration
  def change
    create_table :vocabs do |t|
      t.string :TurkishWP
      t.string :EnglishWP
      t.string :part_of_speech
      t.boolean :formal, default: false
      t.boolean :slang, default: false

      t.timestamps null: false
    end
  end
end
