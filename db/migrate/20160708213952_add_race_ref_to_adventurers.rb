class AddRaceRefToAdventurers < ActiveRecord::Migration
  def change
    add_reference :adventurers, :race, index: true, foreign_key: true
  end
end
