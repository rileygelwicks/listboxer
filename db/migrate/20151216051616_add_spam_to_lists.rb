class AddSpamToLists < ActiveRecord::Migration
  def change
    add_column :lists, :spam, :boolean, default: true
  end
end
