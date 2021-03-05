class CreateUsers < ActiveRecord::Migration[6.1]  #i didnt want standard users scaffold so this file was made using different rails comand: "rails generate migration create_users"
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.timestamps
    end
  end
end
