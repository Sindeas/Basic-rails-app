class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :text
      t.string :user
      t.string :user_id

      t.timestamps
    end
  end
end