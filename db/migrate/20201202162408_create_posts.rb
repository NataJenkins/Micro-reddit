class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.references :author_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end