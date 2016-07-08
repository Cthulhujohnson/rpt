class AddGenderRefToAdventurers < ActiveRecord::Migration
  def change
    add_reference :adventurers, :gender, index: true, foreign_key: true
  end
end
