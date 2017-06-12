class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.strin :username
      t.string :email
      t.boolean :confirmed
      t.string :confirmation_token
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.boolean :avatar

      t.timestamps
    end
  end
end
