class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :author
      t.integer :list_id
      t.text :body
      t.string :from_name
      t.string :from_email
      t.date :date
      t.string :to_email

      t.timestamps null: false
    end
  end
end
