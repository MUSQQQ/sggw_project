class CreateEntries < ActiveRecord::Migration[6.1]  #made using powershell command "rails generate scaffold Entry description:text comment:text"
  def change
    create_table :entries do |t|
      t.text :description
      t.text :comment

      t.timestamps  #give us "created at" and "updated at" feature
    end
  end
end
