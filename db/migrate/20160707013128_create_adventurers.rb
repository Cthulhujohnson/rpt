class CreateAdventurers < ActiveRecord::Migration
  def change
    create_table :adventurers do |t|
      t.string :name
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha

      t.timestamps null: false
    end
  end
end
