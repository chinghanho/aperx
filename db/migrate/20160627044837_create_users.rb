class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :email
      t.string :password_digest
      t.string :remember_digest
      t.integer :role
      t.string :reset_digest
      t.datetime :reset_sent_at

      t.timestamps null: false
    end
  end
end
