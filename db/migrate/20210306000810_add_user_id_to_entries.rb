class AddUserIdToEntries < ActiveRecord::Migration[6.1]
  def change  #db change to add id column to the entries table
    add_column :entries, :user_id, :int
     
  end
end
