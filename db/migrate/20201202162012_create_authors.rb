class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
