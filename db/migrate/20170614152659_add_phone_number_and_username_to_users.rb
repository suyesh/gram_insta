class AddPhoneNumberAndUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone_number, :string,  null: false
    add_index :users, :phone_number, unique: true
    add_column :users, :username, :string,  null: false
    add_index :users, :username, unique: true
  end
end
