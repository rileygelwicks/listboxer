class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :description
      t.string :website
      t.string :fromAddress
      t.string :category

      t.timestamps null: false
    end
  end
end
