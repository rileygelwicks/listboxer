class ChangesSpamColumnInLists < ActiveRecord::Migration
  def change
    change_column_default :lists, :spam, false
  end
end
