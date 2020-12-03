class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
