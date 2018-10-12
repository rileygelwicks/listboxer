class AddIndexToPosts < ActiveRecord::Migration[5.0]
  change_table :posts do |t|
    t.index :list_id
  end
end
