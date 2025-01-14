class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :remember_digest
      t.boolean :is_actived, default: false
      t.string :activation_digest
      t.date :activation_at
      t.string :reset_digest
      t.date :reset_digest_at
      t.string :phone
      t.string :address
      t.integer :role , default: 1
      t.string :avatar

      t.timestamps
      t.index :email, name: "index_users_on_email", unique: true
    end
  end
end
