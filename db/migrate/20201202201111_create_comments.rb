class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :authors, null: false, foreign_key: true
      t.references :posts, null: false, foreign_key: true
      t.timestamps
    end
  end
end
