class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :name, :string
    add_column :users, :phone_number, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_admin,	:boolean, default: false  
  end
end
