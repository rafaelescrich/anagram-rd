class CreateAnagramCompares < ActiveRecord::Migration
  def change
    create_table :anagram_compares do |t|
      t.string :original
      t.string :wannabe
      t.boolean :status

      t.timestamps
    end
  end
end
