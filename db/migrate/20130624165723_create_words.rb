class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string      :word
      t.string      :sorted_word
      t.integer     :length
      
      t.timestamps
    end
  end
end
