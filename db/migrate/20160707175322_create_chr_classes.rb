class CreateChrClasses < ActiveRecord::Migration
  def change
    create_table :chr_classes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
