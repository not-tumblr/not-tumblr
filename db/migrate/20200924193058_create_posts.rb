class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :owner
      t.string :post_id
      t.text :content
      t.integer :notes

      t.timestamps
    end
  end
end
