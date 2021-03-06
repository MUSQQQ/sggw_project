class AddPasswordDigestToUsers < ActiveRecord::Migration[6.1]
  def change  #migration change file to add password to user object
    add_column :users, :password_digest, :string
  end
end
