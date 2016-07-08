class AddChrClassRefToAdventurers < ActiveRecord::Migration
  def change
    add_reference :adventurers, :chr_class, index: true, foreign_key: true
  end
end
