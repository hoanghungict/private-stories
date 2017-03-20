class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :type
      t.string :content
      t.string :link
      t.integer :status
      t.integer :user_id

      t.timestamps
    end
  end
end
